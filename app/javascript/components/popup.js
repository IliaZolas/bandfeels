const pressAddToPlaylist = () => {
    const cards = document.querySelectorAll(".track-card");

    cards.forEach((card) => { 
        card.querySelector(".addtoplaylist").addEventListener("click", function () {
            card.querySelector(".pop-up").className = card.querySelector(".pop-up").className.replace(/(?:^|\s)hidden-popup(?!\S)/g, '');
            document.querySelector('#trackpopup').appendChild(document.querySelector('.pop-up'));
        });
    });
}

export { pressAddToPlaylist };


// document.querySelectorAll('trackpopup').appendChild(document.getElementById('popup')


// card.querySelcetor(".pop-up").destination.appendChild(trackpopup);


// simon

// cards.forEach((card) => {
//     card.querySelector(".addtoplaylist").addEventListener("click", (event) => {
//         // card.querySelector(".pop-up").className = card.querySelector(".pop-up").className.replace(/(?:^|\s)hidden-popup(?!\S)/g, '');
//         document.querySelector(".pop-up");
//         const playlistForm = document.querySelectorAll(".playlist-form");
//         playlistForm.forEach(playlist => {
//             document.querySelector(".pop-up").className.remove("hidden-popup");
//         })


//         // .className.remove("hidden-popup");
//     });
// });
// }