const pressAddToPlaylist = () => {
    const cards = document.querySelectorAll(".track-card");

    cards.forEach((card) => { 
        card.querySelector(".addtoplaylist").addEventListener("click", function () {
            card.querySelector("#popup").classList.replace('hidden-popup', 'none');
            document.querySelector('#trackpopup').appendChild(document.querySelector('#popup'));
        });
    });
}

export { pressAddToPlaylist };