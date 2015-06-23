// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function clicker() {
	$('.name').click(function(){
		//console.log("herpderp");
		$(".monsterPics").effect( "highlight", {color:"#669966"}, 3000 );
    });
}

// //stat generator for monster 1 and 2
// function stats(monster1, monster2) {

// }

// //monster combat function
// function combat(monster1, monster2) {

// }