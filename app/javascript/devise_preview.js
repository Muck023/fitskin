document.addEventListener('DOMContentLoaded', function(){
  const previewList = document.getElementById('devise_previews');
  if (!previewList) return null;

  const fileDevise = document.querySelector('input[type="file"][name="profile_image"]');
  fileDevise.addEventListener('change', function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    previewList.setAttribute('src', blob);
  });
});