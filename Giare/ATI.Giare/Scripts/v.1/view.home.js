/*
Name: 			View - Home
Written by: 	Okler Themes - (http://www.okler.net)
Version: 		3.1.0
*/

(function () {
    $("#btnGoSearch").click(function () {
        window.location.href = "/tim-du-an?k=" + $("#q").val();
    })

    $("#btnSearchN").click(function () {
        window.location.href = "/tim-bai-viet?k=" + $("#s").val();
    })

    "use strict";
    $("#owl-demo").owlCarousel({
        autoPlay: 3000, //Set AutoPlay to 3 seconds
        items: 4,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [979, 3]
    });

    $("#parter").owlCarousel({
        autoPlay: 8000, //Set AutoPlay to 3 seconds
        items: 2,
        itemsDesktop: [599, 3],
        itemsDesktopSmall: [469, 3]
    });

    $("#customer").owlCarousel({
        autoPlay: 3000, //Set AutoPlay to 3 seconds
        items: 5,
        //itemsDesktop: [300, 3],
        //itemsDesktopSmall: [250, 3]
    });

    $("#slide").owlCarousel({
        autoPlay: 3000, //Set AutoPlay to 3 seconds
        items: 1,
        //itemsDesktop: [599, 3],
        //itemsDesktopSmall: [469, 3]
    });
    $("#agency").owlCarousel({
        autoPlay: 3000, //Set AutoPlay to 3 seconds,
        items: 1,
    });

    var Home = {

        initialized: false,

        initialize: function () {

            if (this.initialized) return;
            this.initialized = true;
            this.build();
            this.events();
        },

        build: function (options) {

            // Circle Slider
            if (typeof ($.fn.flipshow()) != "undefined") {
                var circleContainer = $("#fcSlideshow");

                if (circleContainer.get(0)) {
                    circleContainer.flipshow();

                    setInterval(function () {
                        circleContainer.data().flipshow._navigate(circleContainer.find("div.fc-right span:first"), "right");
                    }, 3000);
                }
            }

            // Revolution Slider Initialize
            $("#revolutionSlider").each(function () {

                var slider = $(this);

                var defaults = {
                    delay: 9000,
                    startheight: 495,
                    startwidth: 960,

                    hideThumbs: 10,

                    thumbWidth: 100,
                    thumbHeight: 50,
                    thumbAmount: 5,

                    navigationType: "both",
                    navigationArrows: "verticalcentered",
                    navigationStyle: "round",

                    touchenabled: "on",
                    onHoverStop: "on",

                    navOffsetHorizontal: 0,
                    navOffsetVertical: 20,

                    stopAtSlide: 0,
                    stopAfterLoops: -1,

                    shadow: 0,
                    fullWidth: "on",
                    videoJsPath: "vendor/rs-plugin/videojs/"
                }

                var config = $.extend({}, defaults, options, slider.data("plugin-options"));

                // Initialize Slider
                var sliderApi = slider.revolution(config).addClass("slider-init");

                // Set Play Button to Visible
                sliderApi.bind("revolution.slide.onloaded ", function (e, data) {
                    $(".home-player").addClass("visible");
                });

            });

            // Revolution Slider One Page
            if ($("#revolutionSliderFullScreen").get(0)) {
                var rev = $("#revolutionSliderFullScreen").revolution({
                    delay: 9000,
                    startwidth: 1170,
                    startheight: 600,

                    hideThumbs: 200,

                    thumbWidth: 100,
                    thumbHeight: 50,
                    thumbAmount: 5,

                    navigationType: "both",
                    navigationArrows: "verticalcentered",
                    navigationStyle: "round",

                    touchenabled: "on",
                    onHoverStop: "on",

                    navOffsetHorizontal: 0,
                    navOffsetVertical: 20,

                    stopAtSlide: -1,
                    stopAfterLoops: -1,

                    shadow: 0,
                    fullWidth: "on",
                    fullScreen: "on",
                    fullScreenOffsetContainer: ".header",
                    videoJsPath: "vendor/rs-plugin/videojs/"
                });

            }

            // Nivo Slider
            if ($("#nivoSlider").get(0)) {
                $("#nivoSlider").nivoSlider({
                    effect: 'random',               // Specify sets like: 'fold,fade,sliceDown'
                    slices: 15,                     // For slice animations
                    boxCols: 8,                     // For box animations
                    boxRows: 4,                     // For box animations
                    animSpeed: 500,                 // Slide transition speed
                    pauseTime: 3000,                // How long each slide will show
                    startSlide: 0,                  // Set starting Slide (0 index)
                    directionNav: true,             // Next & Prev navigation
                    controlNav: true,               // 1,2,3... navigation
                    controlNavThumbs: false,        // Use thumbnails for Control Nav
                    pauseOnHover: true,             // Stop animation while hovering
                    manualAdvance: false,           // Force manual transitions
                    prevText: 'Prev',               // Prev directionNav text
                    nextText: 'Next',               // Next directionNav text
                    randomStart: false,             // Start on a random slide
                    beforeChange: function () { },     // Triggers before a slide transition
                    afterChange: function () { },      // Triggers after a slide transition
                    slideshowEnd: function () { },     // Triggers after all slides have been shown
                    lastSlide: function () { },        // Triggers when last slide is shown
                    afterLoad: function () { }         // Triggers when slider has loaded
                });
            }

        },

        events: function () {

            this.moveCloud();

        },

        moveCloud: function () {

            var $this = this;

            $(".cloud").animate({ "top": "+=20px" }, 3000, "linear", function () {
                $(".cloud").animate({ "top": "-=20px" }, 3000, "linear", function () {
                    $this.moveCloud();
                });
            });
        }
    };

    Home.initialize();

})();

$(document).ready(function () {
    $("#btnNewletter").click(function () {
        if ($.trim($("#newsletterEmail").val()) == "") {
            alert("Địa chỉ Email không được để trống");
            $("#newsletterEmail").focus();
            return;
        }

        if (!CheckEmailFormat($.trim($("#newsletterEmail").val()))) {
            alert("Email không đúng định dạng");
            $("#newsletterEmail").focus();
            return;
        }

        $("#loading").removeClass("hidden");
        $.getJSON("/Home/SendContact", {
            name: "", type: "Nhận thư mới", mobile: "", email: $.trim($("#newsletterEmail").val()), company: "", message: "Đăng ký nhận thư mới", address: "", title: ""
        }, function (data) {
            $("#loading").addClass("hidden");

            alert("Đã đăng ký nhận tin mới thành công");
        });
    })
});

function CheckEmailFormat(email) {
    var regex = new RegExp("^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");

    return regex.test($.trim(email));
};

function AddItem(id) {
    //$("#loading").removeClass("hidden");
    $.getJSON("/Home/AddShoppingCart", { id: id, quantity: 1 }, function (data) {
        //$("#loading").addClass("hidden");

        window.location.href = "/gio-hang";
    });
}

function RemoveItem(id) {
    //$("#loading").removeClass("hidden");
    $.getJSON("/Home/RemoveItemInCart", { id: id }, function (data) {
        //$("#loading").addClass("hidden");
        if (data >= 0) {
            $("#itemCount").text(data);
        }

        $("#item" + id).remove();
    });
}