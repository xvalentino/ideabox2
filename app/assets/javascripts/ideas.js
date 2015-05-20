$( document ).ready(function() {
  $('tbody tr .idea-destroy').on('click', function() {
    $idea = $(this).parent();
    ideaId =  $idea.data("id");


    $.ajax({
      url: '/ideas/' + ideaId,
      type: 'DELETE'
    })
    .always(function() {
      $idea.remove();
      $('#deleted').slideDown(function() {
        setTimeout(function() {
          $('#deleted').slideUp();
        }, 1000);
      });
    });
  });
});
