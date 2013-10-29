$(document).ready( function(){
  var new_message_form = $("#home_new-message").find(".well");

  new_message_form.on("focusin", "*", function(){
    if(new_message_form.hasClass("inactive"))
    {
      new_message_form.removeClass("inactive");
    }
  });
})