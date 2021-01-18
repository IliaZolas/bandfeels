const pressAddToPlaylist = () => {
    const cards = document.querySelectorAll(".track-card");
    console.log(cards);

    cards.forEach((card) => {
        card.querySelector(".addtoplaylist").addEventListener("click", function () {
            // card.querySelector("#popup");
            // card.querySelector(".play-button").className += " hidden";
            card.querySelector(".pop-up").className =
                card.querySelector(".pop-up").className.replace
                (/(?:^|\s)hidden-popup(?!\S)/g, '');
        });
    });
}

export { pressAddToPlaylist };