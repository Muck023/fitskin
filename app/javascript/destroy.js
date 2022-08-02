document.addEventListener('DOMContentLoaded', function(){
  const destroyButtom = document.getElementById('item_show_submit');
  const destroyView = document.getElementById('destoroy_view');
  const xButtom = document.getElementById('xbuttom');

  if (!destroyButtom) return null;

  destroyButtom.addEventListener('click', function() {
    destroyView.setAttribute("style", "display:block;")
  })

  xButtom.addEventListener('click', function() {
    destroyView.removeAttribute("style", "display:block;")
  })

});