
/******************
*******************
** PRELOAD IMAGES**
*******************
******************/
'use strict'
var Preload = Preload || {};

Preload.BackgroundImages = function(options){

  var _options = {
    preloadClass: "",
    isSlick: false,
    DOMEleType:"figure",
    largeDesktop: 1500,
    desktop: 1200,
    tablet: 768,
    mobile: 670,
    before:"",
    after:"",
    slickInit:"",
    slickSlidesToShow:1,
    slickSlidesToScroll: 1,
    slickContainer:"",
  };

  for (var o in options) if (_options[o] != undefined) _options[o] = options[o];
  _options.preloadClass = _options.preloadClass.replace(/\./, '');

  var win = $(window);
  var sizeToLoad;
  var windowSize = win.width();
  var largeDesktop = _options.largeDesktop;
  var desktop = _options.desktop;
  var tablet = _options.tablet;
  var mobile = _options.mobile;
  var image = _options.preloadClass == "" ? $('.cover-image') : $('.' + _options.preloadClass);


  (function main(){
    try{
      getCorrectDataAttr();
     
      if(_options.isSlick){
        preloadSlick();
      }
      else{
        preloadDomBackgroundImages();
        $(window).scroll(preloadDomBackgroundImages);
      }
    }catch(err){ console.log(err); }
  })();


  function preloadSlick(){

    try {
      if (typeof _options.slickInit === "function" && _options.isSlick)
        var slideCount =image.length;
     
        var html = '';
        var imageLoaded = 0;

        function handleImagePreload() {
          ++imageLoaded;
          if(imageLoaded < _options.slickSlidesToShow) return;
          $(window).trigger('initialSlickSlidesLoaded');
        }

        image.each(function(i, item){

          item = $(item);
          var imageSrc = item.attr('data-image-large');
          var imageAttr = i <= _options.slickSlidesToShow ? 'style="background-image: url(\''+ imageSrc +'\')" ' : 'data-image="'+ imageSrc +'" ';

          if(i <= _options.slickSlidesToShow) {
            $('<img />').load(handleImagePreload).error(handleImagePreload).attr('src', imageSrc);
          }

          html += '<'+ _options.DOMEleType +' class="'+  _options.preloadClass + " " + (_options.preloadClass == "" ? "cover-image" : _options.preloadClass) +'-loaded" ' + imageAttr +' role="img" aria-label="'+ item.text() +'"></'+ _options.DOMEleType +'>';

        });

        _options.slickContainer.empty().append(html);
        
        _options.slickInit();
        _options.slickContainer.slick('slickPause');
        
        $(window).on('initialSlickSlidesLoaded', function(){
          if(_options.slickContainer.slick('slickGetOption','autoplay'))
            _options.slickContainer.slick('slickPlay');
        });

        var loadCount = _options.slickSlidesToShow + 1;

        /*
        _options.slickContainer.on('beforeChange',function(event,slick,currentSlide,nextSlide){
          //due to inconsistency in nextSlide we'll override it
          //ex: slidesToShow = 3, slidesToScroll = 1 would give 0 and 1 (next slide)
          //slidesToShow = 3, slidesToScroll = 3 would give 0 and 3 (next slide)
          if(loadCount > _options.slickContainer.find('.slick-slide:not(.slick-cloned)').length) return
                    
          _options.slickContainer.slick('slickPause');
          nextSlide = parseInt(_options.slickContainer.find('.slick-active:not(.slick-cloned)').last().attr('data-slick-index')) + 1;
          var start = nextSlide;
          var end = start + _options.slickSlidesToScroll;
          var slideToLoad = _options.slickContainer.find('.slick-slide:not(.slick-cloned)').slice(start, end);
          $.each(slideToLoad,function(i,item){
            var ele = $(item);
            if (ele.hasClass('image-loaded')) return;
            var dummyImage = new Image();
            dummyImage.src = ele.attr('data-image');
            $(dummyImage).load(function(){
              ele.css('background-image','url('+ dummyImage.src +')').addClass('image-loaded');  
            });
            loadCount++;
          });
          
          if(_options.slickContainer.slick('slickGetOption','autoplay'))
            _options.slickContainer.slick('slickPlay');

        });

        */

        _options.slickContainer.on('beforeChange',function(event,slick,currentSlide,nextSlide){
          
          if(loadCount > _options.slickContainer.find('.slick-slide:not(.slick-cloned)').length) return
          _options.slickContainer.slick('slickPause');

          var slideCount =  _options.slickContainer.find('.slick-slide:not(.slick-cloned)').length;
          
          function _loadSlickImage(){

            //if(_options.slickContainer.find('.image-loaded').length + _options.slickSlidesToScroll +1 ==  _options.slickContainer.find('.slick-slide:not(.slick-cloned)').length) return
            var nextSlide = parseInt(_options.slickContainer.find('.slick-active:not(.slick-cloned)').last().attr('data-slick-index')) + 1;
            var start =  _options.slickSlidesToScroll +1;
            var end = start + _options.slickSlidesToScroll;
            var slideToLoad = _options.slickContainer.find('.slick-slide:not(.slick-cloned)').slice(start, end);
            
            $.each(slideToLoad,function(i,item){
              var ele = $(item);
              if (ele.hasClass('image-loaded')) return;
              var dummyImage = new Image();
              dummyImage.src = ele.attr('data-image');
              $(dummyImage).load(function(){
                ele.css('background-image','url('+ dummyImage.src +')').addClass('image-loaded');  
              });
            });

          }

          if ((currentSlide > nextSlide && (nextSlide !== 0 || currentSlide === 1)) || (currentSlide === 0 && nextSlide === slick.slideCount - 1)) {
            _loadSlickImage();
            
          }
          else {
            _loadSlickImage();
          } 

        });

    } catch (err) { console.log(err)}
  }

  function preloadDomBackgroundImages(){
    
    $.each(image,function(i,item){
      
      var ele = $(item);

      if( elementInViewport(item) && !ele.hasClass(_options.preloadClass + '-loaded')){
        
        var existingClasses = ele.attr('class');
        var existingClassesFiltered = existingClasses.length > 1 ? existingClasses.split((_options.preloadClass))[1] : "";
        var dummyImage = new Image();
        dummyImage.src = ele.attr(sizeToLoad) || ele.attr('href');
        var imageName = dummyImage.src.substring(dummyImage.src.lastIndexOf('/') + 1, dummyImage.src.length).split('.')[0].replace(/[-_]/g,' ');

        try {
          if (typeof _options.before === "function")
              _options.before(ele);
        } catch (err) { }

        $(dummyImage).load(function(){
          ele.replaceWith('<'+ _options.DOMEleType +' class="'+ existingClassesFiltered + " " + (_options.preloadClass == "" ? "cover-image" : _options.preloadClass) +'-loaded" style="background-image:url('+  dummyImage.src +');" role="img" aria-label="'+ imageName +'"></'+ _options.DOMEleType +'>');
        });
        
        try {
          if (typeof _options.after === "function")
              _options.after(ele);
        } catch (err) { }

      }
    });
    
  }

  function getCorrectDataAttr(){
    if(windowSize >= largeDesktop)
      sizeToLoad = 'data-image-large';
    else if(windowSize >= desktop)
        sizeToLoad = 'data-image-desktop';
    else if(windowSize >= tablet)
        sizeToLoad = 'data-image-tablet';
    else
        sizeToLoad = 'data-image-mobile';
  }

  function elementInViewport(el) {
    var top = el.offsetTop;
    var left = el.offsetLeft;
    var width = el.offsetWidth;
    var height = el.offsetHeight;
    while(el.offsetParent) {
      el = el.offsetParent;
      top += el.offsetTop;
      left += el.offsetLeft;
    }
    return (
      top < (window.pageYOffset + window.innerHeight) &&
      left < (window.pageXOffset + window.innerWidth) &&
      (top + height) > window.pageYOffset &&
      (left + width) > window.pageXOffset
    );

  }

}