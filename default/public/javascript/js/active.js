(function($) {
    "use strict";

    // jquery document ready function
    jQuery(document).on('ready', function() {

        function custom_js_khela() {

            var windowS = $(window),
                /*windowH = windowS.height(),*/
                
                windoww = windowS.width(),
                welcomeS = $('.welcome-text'),
                homes = $('.home-area'),
                navtops = $('.Menu_top_bar_area'),
                navtopH = navtops.height(),
                sliderS = $('.Modern-Slider .item .img-fill'),
                welcomeH = welcomeS.height()
                /*banner = (windowH - navtopH),
                vertical = ((banner - welcomeH) /2);
            welcomeS.css({
                paddingTop: vertical,
                paddingBottom: vertical
            });*/
            if (windoww < 768) {
                welcomeS.css({
                    paddingTop: vertical - 20
                });
            }
            // code for search box
            var searchopen = $('.searchbtn'),
                searchclose = $('.searchhide'),
                searchbox = $('.searchbox');
            searchclose.slideUp(500);
            searchbox.slideUp(500);

            searchopen.on('click', function() {

                $(this).hide(500);
                $('.searchhide').show(500);
                searchbox.show(500);
                return false;
            });

            searchclose.on('click', function() {
                searchbox.hide(500);
                $(this).hide(500);
                searchopen.show(500);
                return false;
            });

            // end of search box code
            /*sliderS.css('height', banner);*/

            jQuery(window).on('scroll', function() {

                if ($(this).scrollTop() > 1) {
                    $('.navbar').addClass("sticky");
                } else {
                    $('.navbar').removeClass("sticky");
                }
            });
        }

        if ($.fn.slider) {
            $("#slider-3").slider({
                range: false,
                min: 400,
                max: 4000,
                values: [400],
                slide: function(event, ui) {
                    $("#price").val("$" + ui.values[0]);
                }
            });
            $("#price").val("$" + $("#slider-3").slider("values", 0));
        }

        // Change navbar header Icon on click
        $(".navbar-toggle").on("click", function() {
            $(this).toggleClass("active");
        });
        if ($.fn.countrySelect) {
            $(".country").countrySelect();
        }
       
        // isotop flugins


        // isotop active
        if ($.fn.isotope) {
            $(".isotop-active").isotope({
                filter: '*',
            });

            $('.project-nav li').click(function() {

                $(".project-nav li").removeClass("current");
                $(this).addClass("current");

                var selector = $(this).attr('data-filter');
                $(".isotop-active").isotope({
                    filter: selector,
                    animationOptions: {
                        duration: 750,
                        easing: 'easeOutCirc',
                        queue: false,
                    }
                });
                return false;
            });
        }

        // end of video code

        if ($.fn.slick) {

            $(".Modern-Slider").slick({
                autoplay: false,
                autoplaySpeed: 10000,
                speed: 600,
                slidesToShow: 1,
                slidesToScroll: 1,
                pauseOnHover: false,
                dots: true,
                pauseOnDotsHover: true,
                cssEase: 'linear',
                fade: true,
                draggable: true,
                prevArrow: '<button class="PrevArrow fa fa-angle-left"></button>',
                nextArrow: '<button class="NextArrow fa fa-angle-right"></button>',
            });

            $('.active-brand-slider').slick({
                slidesToScroll: 1,
                slidesToShow: 5,
                autoplay: true,
                prevArrow: '<button class="PrevArrowbrand fa fa-angle-left"></button>',
                nextArrow: '<button class="NextArrowbrand fa fa-angle-right"></button>',
                arrows: false,

                responsive: [{
                    breakpoint: 780,
                    settings: {
                        slidesToShow: 3
                    }
                }, {
                    breakpoint: 500,
                    settings: {
                        slidesToShow: 1
                    }
                }]
            });

            $('.latest-project-slider').slick({
                autoplay: true,
                slidesToShow: 3,
                slidesToScroll: 3,
                dots: true,
                arrows: false,
                responsive: [{
                    breakpoint: 780,
                    settings: {
                        slidesToShow: 2
                    }
                }, {
                    breakpoint: 500,
                    settings: {
                        slidesToShow: 1
                    }
                }]


            });

            $('.avacus-client-slider').slick({
                autoplay: true,
                slidesToShow: 2,
                slidesToScroll: 1,
                speed: 600,
                dots: false,
                arrows: true,
                prevArrow: '<button type="button" class="slick-prev clientprev fa fa-angle-left"></button>',
                nextArrow: '<button type="button" class="slick-next clientnext fa fa-angle-right"></button>',
                responsive: [{
                    breakpoint: 780,
                    settings: {
                        slidesToShow: 1
                    }
                }, {
                    breakpoint: 500,
                    settings: {
                        slidesToShow: 1
                    }
                }]

            });

            $('.active-premium-slider').slick({
                autoplay: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                dots: false,
                arrows: true,
                prevArrow: '<button type="button" class="slick-prev clientprev fa fa-angle-left"></button>',
                nextArrow: '<button type="button" class="slick-next clientnext fa fa-angle-right"></button>'
            });

            //            single product view 

            $('.product-view-slider').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                asNavFor: '.product-thumbnail',
                dots: false,
            });
            $('.product-thumbnail').slick({
                slidesToShow: 3,
                slidesToScroll: 1,
                asNavFor: '.product-view-slider',
                dots: false,
                centerMode: false,
                focusOnSelect: true,

            });


        }
        // jquery counterUp active
        if ($.fn.counterUp) {
            $('.counter').counterUp({
                delay: 10,
                time: 1500
            });
        }


        function magnific_active() {
            if ($.fn.magnificPopup) {
               
                $('.pp').magnificPopup({
                    type: 'iframe',
                    // other options
                });
            }

        }
        $(".plus").on('click', function(e) {
            e.preventDefault();
            var $this = $(this);
            var $input = $this.parent().siblings('input');
            var value = parseInt($input.val());
            if (value < 30) {
                value = value + 1;
            } else {
                value = 30;
            }
            $input.val(value);
        });
        $(".minus").on('click', function(e) {
            e.preventDefault();
            var $this = $(this);
            var $input = $this.parent().siblings('input');
            var value = parseInt($input.val());
            if (value > 1) {
                value = value - 1;
            } else {
                value = 1;
            }
            $input.val(value);
        });
        // jquery window load function
        jQuery(window).on('load', function() {

            $('#preloader').fadeOut('slow', function() {
                $(this).remove();
            });
            custom_js_khela();
            custom_accourdion();
             magnific_active();
        });
        // code for bootstrap accourdion
        function custom_accourdion() {
            $('.collapse.in').prev('.panel-heading').addClass('active');
            $('#accordion, #accordionGroupClosed, #bs-collapse')
                .on('show.bs.collapse', function(a) {
                    $(a.target).prev('.panel-heading').addClass('active');
                })
                .on('hide.bs.collapse', function(a) {
                    $(a.target).prev('.panel-heading').removeClass('active');
                });
        }
        // script for onepagenav
        if ($.fn.onePageNav) {
            $('.menu').onePageNav({
                currentClass: 'current-menu-item',
                changeHash: false,
                scrollSpeed: 750,
                scrollThreshold: 0.5,
                filter: '',
                easing: 'swing',
                begin: function() {
                    //I get fired when the animation is starting
                },
                end: function() {
                    //I get fired when the animation is ending
                },
                scrollChange: function($currentListItem) {
                    //I get fired when you enter a section and I pass the list item of the section
                }
            });
        }
        // jquery window resize function
        jQuery(window).on('resize', function() {
            custom_js_khela();
            custom_accourdion();
             magnific_active();

        });

    });


})(jQuery);
