document.addEventListener('DOMContentLoaded', function(){
  const previewList = document.getElementById('previews');
  if (!previewList) return null;

  const fileField = document.querySelector('input[type="file"][name="user[profile_image]"]');
  fileField.addEventListener('change', function(e){
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    previewList.setAttribute('src', blob);
  });
});