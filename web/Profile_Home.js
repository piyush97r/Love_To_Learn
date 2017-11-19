/*
TODO:
- remove html-tags for animations.
- add correct padding.
- add hover effects and colors.
*/

$(function() {
			App.init();
});
var App = {
			init: function() {
						this.side.nav(),this.navigation(), this.hyperlinks()
			},
			title: function(e) {
						return $(".header>.title").text(e)
			},
			side: {
						nav: function() {
									this.toggle(), this.navigation()
						},
						toggle: function() {
									$(".ion-ios-navicon").on("touchstart click", function(e) {
												e.preventDefault(), $(".sidebar").toggleClass("active"), $(".nav").removeClass("active"), $(".sidebar .sidebar-overlay").removeClass("fadeOut animated").addClass("fadeIn animated")
									}), $(".sidebar .sidebar-overlay").on("touchstart click", function(e) {
												e.preventDefault(), $(".ion-ios-navicon").click(), $(this).removeClass("fadeIn").addClass("fadeOut")
									})
						},
						navigation: function() {
									$(".nav-left a").on("touchstart click", function(e) {
												e.preventDefault();
												var t = $(this).attr("href").replace("#", "");
												$(".sidebar").toggleClass("active"), $(".html").removeClass("visible"), "home" == t || "" == t || null == t ? $(".html.welcome").addClass("visible") : $(".html." + t).addClass("visible"), App.title($(this).text())
									})
						}
			},
			navigation: function() {
						$(".nav .mask").on("touchstart click", function(e) {
									e.preventDefault(), $(this).parent().toggleClass("active")
						})
			},
			hyperlinks: function() {
						$(".nav .nav-item").on("click", function(e) {
									e.preventDefault();
									var t = $(this).attr("href").replace("#", "");
									$(".html").removeClass("visible"), $(".html." + t).addClass("visible"), $(".nav").toggleClass("active"), App.title($(this).text())
						})
			}
};