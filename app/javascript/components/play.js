const pressPlayButton = () => {
    document.getElementById("play-button").addEventListener("click", function () {
        document.getElementById("play-track").play();
    });
}
export { pressPlayButton };

// const pressPlayButton = () => {
//     playButton = document.querySelectorAll("#play-button");
//     playTrack = document.querySelectorAll(".play-track");
//     playButton.addEventListener("click", function () {
//         playTrack.forEach(track) => track.play();
//     });
// }

// export { pressPlayButton };

// const pressPlayButton = () => {
//     document.getElementById("#play-button").addEventListener("click", function () {
//         document.getElementById("#play-track").forEach(track) => track.play();
//     });
// }
// export { pressPlayButton };