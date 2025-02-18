document.addEventListener("DOMContentLoaded", function () {
  const photoInput = document.getElementById("photo_input");
  const photoPreview = document.getElementById("photo_preview");

  photoInput.addEventListener("change", function (event) {
    const file = event.target.files[0];

    if (file) {
      const reader = new FileReader();

      reader.onload = function (e) {
        photoPreview.src = e.target.result;
        photoPreview.style.display = "block";
      };

      reader.readAsDataURL(file);
    }
  });
});
