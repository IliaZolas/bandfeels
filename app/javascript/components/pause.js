const pressPauseButton = () => {
    document.getElementById("pause-button").addEventListener("click", function () {
        document.getElementById("play-track").pause();
        document.getElementById("pause-button").className += " hidden";
        document.getElementById("play-button").className =
            document.getElementById("play-button").className.replace
                (/(?:^|\s)hidden(?!\S)/g, '');
    });
}
export { pressPauseButton };
