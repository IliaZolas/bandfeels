const pressClosePopup = () => {
    const popups = document.querySelectorAll(".pop-up");

    popups.forEach((popup) => {
        popup.querySelector(".close-popup").addEventListener("click", function () {
            popup.classList.add("hidden-popup");
            popup.classList.remove("none");
            document.querySelector('#trackcard').appendChild(document.querySelector('#popup'));
        });
    });
}

export { pressClosePopup };


// document.querySelector('#trackpopup').appendChild(document.querySelector('.pop-up'));

// document.querySelector('#trackpopup').removeChild(document.querySelector('.pop-up'));