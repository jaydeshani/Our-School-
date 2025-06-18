var slideIndex = 0;

// Function to show the next or previous slide
function showSlides() {
    var slides = document.getElementsByClassName("slides");

    for (var i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    slideIndex++;

    if (slideIndex > slides.length) { slideIndex = 1 }
    slides[slideIndex - 1].style.display = "block";

    setTimeout(showSlides, 3000); // Change image every 3 seconds
}

// Function to control the slide movement (next/previous)
function plusSlides(n) {
    showSlides(slideIndex += n);
}

// Start the slider when the page loads
window.onload = showSlides;
