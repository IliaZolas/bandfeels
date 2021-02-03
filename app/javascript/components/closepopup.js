const pressClosePopup = () => {
    const popups = document.querySelectorAll(".pop-up");

    popups.forEach((popup) => {
        popup.querySelector(".close-popup").addEventListener("click", function () {
            popup.classList.add("hidden-popup");
            popup.classList.remove("none");
        });
    });
}

export { pressClosePopup };


// document.querySelector('#trackpopup').appendChild(document.querySelector('.pop-up'));