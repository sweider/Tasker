$(document).ready( function(){
  var new_message_form = $("#home_new-message").find(".well");

  $("#home_new-message").find(".well").on("focusin", "textarea", function(){
    var new_message_form = $(this).closest(".well");
    if(new_message_form.hasClass("inactive"))
    {
      new_message_form.removeClass("inactive");
    }
  });
})