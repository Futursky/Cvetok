(function($) {
  $('.notice').delay(2000).slideUp("slow");
  // $(".delete").click(function(e){
  //   e.stopPropagation();

  // });
  $(".dropdown").on("click", ".delete", function(e){
    console.log("!");
    e.stopPropagation();
    console.log("#");
  });
})(jQuery);