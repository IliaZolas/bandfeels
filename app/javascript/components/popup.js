const pressAddToPlaylist = () => {
    const cards = document.querySelectorAll(".track-card");
    console.log(cards);

    cards.forEach((card) => {
        card.querySelector(".addtoplaylist").addEventListener("click", function () {
            card.querySelector(".pop-up").className = card.querySelector(".pop-up").className.replace(/(?:^|\s)hidden-popup(?!\S)/g, '');
        });
    });
}

export { pressAddToPlaylist };


// document.querySelectorAll('trackpopup').appendChild(document.getElementById('popup')


// card.querySelcetor(".pop-up").destination.appendChild(trackpopup);