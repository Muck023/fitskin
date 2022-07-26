window.addEventListener('load', function(){
  const userIcon = document.getElementById("user_icon")
  const mouserOverArea = document.getElementById("mouseover_area")
  const lists = document.getElementById("header_list")
  const mypageButton = document.getElementById("header_list1")
  const itemButton = document.getElementById("header_list2")
  const logoutButton = document.getElementById("header_list3")
  const mypageList = document.getElementById("mypage")
  const itemList = document.getElementById("item")
  const logoutList = document.getElementById("logout")

  userIcon.addEventListener('mouseover', function(){
    lists.setAttribute("style", "display:block;")
  })

  // アイコンの右上からリストの左下のエリアからマウスが離れるとリストが表示されない
  mouserOverArea.addEventListener('mouseout', function(e){
    if ((lists.contains(e.relatedTarget)) || (mouserOverArea.contains(e.relatedTarget))) return; 
    lists.removeAttribute("style", "display:block;")
  })

  lists.addEventListener('mouseout', function(e){
    if (lists.contains(e.relatedTarget)) return; 
    lists.removeAttribute("style", "display:block;")
  })
  // アイコンの右上からリストの左下のエリアからマウスが離れるとリストが表示されない//


  // listの色と文字の色をマウスが重なっているかいないかで変更
  mypageButton.addEventListener('mouseover', function(){
    mypageList.setAttribute("style", "background-color: #FF96B9;")
    this.setAttribute("style", "color: white;")
  })
  itemButton.addEventListener('mouseover', function(){
    itemList.setAttribute("style", "background-color: #FF96B9;")
    this.setAttribute("style", "color: white;")
  })
  logoutButton.addEventListener('mouseover', function(){
    logoutList.setAttribute("style", "background-color: #FF96B9;")
    this.setAttribute("style", "color: white;")
  })

  mypageButton.addEventListener('mouseout', function(){
    mypageList.removeAttribute("style", "background-color: white;")
    this.setAttribute("style", "color: black;")
  })
  itemButton.addEventListener('mouseout', function(){
    itemList.removeAttribute("style", "background-color: #FF96B9;")
    this.setAttribute("style", "color: black;")
  })
  logoutButton.addEventListener('mouseout', function(){
    logoutList.removeAttribute("style", "background-color: #FF96B9;")
    this.setAttribute("style", "color: black;")
  })
  // listの色と文字の色をマウスが重なっているかいないかで変更 //

})