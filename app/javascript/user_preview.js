document.addEventListener('DOMContentLoaded', function(){
  const previewList = document.getElementById('user_previews');
  if (!previewList) return null;

  const fileUser = document.querySelector('input[type="file"][name="user[profile_image]"]');
  fileUser.addEventListener('change', function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    previewList.setAttribute('src', blob);
  });
});