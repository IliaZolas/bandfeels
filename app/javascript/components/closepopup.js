const pressClosePopup = () => {
    const popups = document.querySelectorAll(".pop-up");

    popups.forEach((popup) => {
        popup.querySelector(".close-popup").addEventListener("click", function () {
            popup.classList.add("hidden-popup");
            document.querySelector("#trackcard").appendChild(document.querySelector(".none"));
            popup.classList.remove("none");
        });
    });
}

export { pressClosePopup };


// popups.forEach((popup) => {
//     popup.querySelector(".close-popup").addEventListener("click", function () {
//         popup.classList.add("hidden-popup");
//         document.querySelector("#trackcard").appendChild(document.querySelector(".none"));
//         popup.classList.remove("none");
//     });
// });
// }








// popups.forEach((popup) => {
//     popup.querySelector(".close-popup").addEventListener("click", function () {
//         popup.classList.add("hidden-popup");
//         cards.forEach((card) => {
//             card.querySelector("#trackcard").appendChild(document.querySelector(".none"));
//         });
//         popup.classList.remove("none");
//     });
// });
// }