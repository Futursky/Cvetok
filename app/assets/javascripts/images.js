$(function() {
  // Handler for .ready() called.
  $("#blah").hide();
  function readURL(input) {
    if (input.files && input.files[0]) {
      $("#blah").show();
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#blah').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#imgInp").change(function(){
    console.log( "1" );
    readURL(this);
  });
});