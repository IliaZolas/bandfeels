const pressPauseButton = () => {
    const cards = document.querySelectorAll(".track-card");

    cards.forEach((card) => {
        card.querySelector(".pause-button").addEventListener("click", function () {
            card.querySelector("#play-track").pause();
            card.querySelector(".pause-button").className += " hidden";
            card.querySelector(".play-button").className =
                card.querySelector(".play-button").className.replace
                    (/(?:^|\s)hidden(?!\S)/g, '');
        });
    });
}

export { pressPauseButton };



// const pressPlayButton = () => {
//     const cards = document.querySelectorAll(".track-card");
//     console.log(cards);

//     cards.forEach((card) => {
//         card.querySelector(".play-button").addEventListener("click", function () {
//             card.querySelector("#play-track").play();
//             card.querySelector(".play-button").className += " hidden";
//             card.querySelector(".pause-button").className =
//                 card.querySelector(".pause-button").className.replace
//                     (/(?:^|\s)hidden(?!\S)/g, '');
//         });
//     });
// }

// export { pressPlayButton };