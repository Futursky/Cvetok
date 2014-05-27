$(function() {

  $('input[type=file]').hide();
  $('.boolean.input.optional').hide();

  $('fieldset.has_many_fields').each(function (index) {
    $(this).append('<li><a class="button remove" href="#">Remove</a></li>')
  });

  $('.remove').click(function() {
    console.log(this);
    $(this).parent().prev().find('input[type=checkbox]').prop('checked', true);
    $(this).closest('fieldset').hide();    
  })

  $(".has_many_add").click(function() {
    setTimeout(function() {
      $('input[type=file]').last().hide();
      $("p > img").last().hide();
      $('.has_many_fields').last().find('input[type=file]').trigger('click');
    }, 0);    
  });

  function readURL(input) {
    var inp = input;
    if (input.files && input.files[0]) {
      $(inp).next().find("img").show();
      var reader = new FileReader();
      reader.onload = function (e) {
        console.log(inp);
        $(inp).next().find("img").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $('.images').on("change", "input[type=file]", function() {
    readURL(this);
  });
});
