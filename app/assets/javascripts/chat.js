$(window).on('load',function(){
  $('#commit').on('click', () => {
    let text = $('#message').val();
    $.post('/chat/commit',JSON.stringify({message: text}));
  });
});
