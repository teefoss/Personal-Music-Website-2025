
// Add the 'current' class to the current menu item.
document.addEventListener("DOMContentLoaded", function() {
    // Get the current page's URL path
    var currentPage = window.location.pathname;

    // Get all the links in the navigation
    var navLinks = document.querySelectorAll('nav a');

    // Loop through each link and check if its href matches the current URL
    navLinks.forEach(function(link) {
        if (link.getAttribute('href') === currentPage) {
            // Add the 'current' class to the matching link
            link.classList.add('current');
        }
    });
});


// Nav Open Button
document.getElementById('nav-open').addEventListener('click', function() {
    const navMenu = document.getElementById('nav-menu');
    navMenu.classList.toggle('open');
});

// Nav Close Button
document.getElementById('nav-close').addEventListener('click', function() {
    const navMenu = document.getElementById('nav-menu');
    navMenu.classList.toggle('open');
});


// Add a class for all lilypondbook-generated images, identify them
// by the fact that they all have alt="[image of music]".
document.querySelectorAll('img[alt="[image of music]"]').forEach((img) => {
    img.classList.add("lilypond-img");
});
