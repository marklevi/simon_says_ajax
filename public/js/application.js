$(document).ready(function(){
  $('#get_color').on('click', function(e){
    e.preventDefault()
    $.ajax({
      url: "/color",
      type: "post"
    }).done(function(data){
      $('#color_me li:nth-child('+data.cell+')').attr('style', 'background-color: '+data.color+'')
    })
  })
});