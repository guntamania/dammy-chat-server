$(window).on('load',function(){
  $('#commit').on('click', () => {
    let text = $('#message').val();
    $.post('/chat/commit',JSON.stringify({message: text}));
    App.post.speak(text);
  });
});

function addMessage(message) {
  var parent = document.getElementById('timeline');
  var div = document.createElement('div');
  div.innerText = message['user'] + ": " + message['message'];
  parent.appendChild(div);
  $('#message').val("");
}
