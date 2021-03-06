﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

</style>
<link rel="stylesheet" type="text/css" href="https://raw.githubusercontent.com/kenwheeler/slick/master/slick/slick-theme.css"/>
<link rel="stylesheet" href="preload.css">
</head>
<body>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="slick.js"></script>

<script src="preload.js"></script>
<script>
	jQuery(function(){
		
		var preloadImages = new Preload.BackgroundImages({
			preloadClass: "pi",
			isSlick: false,
			DOMEleType:"figure",
			largeDesktop: 1500,
			desktop: 1200,
			tablet: 768,
			mobile: 670,
			before: function(ele){
				//console.log('before link html has changed');
			},
			after: function(ele){
				//console.log('image has Changed');
			},
		});

		var slidesToShow = 3;
		var slidesToScroll = 3;
		var slickContainer = $('.hero');

		var preloadSlick = new Preload.BackgroundImages({
			preloadClass: "slide",
			isSlick: true,
			DOMEleType:"figure",
			largeDesktop: 1500,
			desktop: 1200,
			tablet: 768,
			mobile: 670,
			slickSlidesToShow:slidesToShow,
			slickSlidesToScroll:slidesToScroll,
			slickContainer: slickContainer,
			slickInit: function(){
				slickContainer.slick({
					slidesToShow:slidesToShow,
					slidesToScroll: slidesToScroll,
					autoplay:true,
					autoplaySpeed: 2000,
					infinite:true
				});
			}
		});
	});
</script>

<div class="hero">
	
    <%for(var i = 0; i < 10000; i++){ %>
    <a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="slide">spa</a>
    <%} %>
	
</div>


<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image test">spa</a>

<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="activities-hero-fall-large.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/home/features/activities-golf.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/spa-interior-background.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>
<a href="activities-hero-fall-large.jpg" data-image-large="http://nemacolin.hdmdev.com/images/v2/category/background/weddings-set-up.jpg" data-image-desktop="activities-hero-fall-desktop.jpg" data-image-tablet="activities-hero-fall-tablet.jpg" data-image-mobile="activities-hero-fall-mobile.jpg" class="pi cover-image">spa</a>

</body>
</html>
