jQuery(document).ready(function($) {

  jQuery('#form__registration').submit(ajaxSubmit);

  function ajaxSubmit() {

    let formRegistration = jQuery(this).serialize();

    jQuery.ajax({
      type:"POST",
      url: myAjax.ajaxurl,
      data: formRegistration
      })
      .done(function(response) {
        jQuery("#result").html(response);
        jQuery('#form__registration')[0].reset();
      })
      .fail(function(response,textStatus,jqXHR) {
        jQuery("#result").html(response.responseText);
    })

    return false;
  };

});
