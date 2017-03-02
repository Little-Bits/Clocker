$(document).ready(function () {
    var h1 = document.getElementsByTagName('h2')[0],
        start = document.getElementById('start'),
        stop = document.getElementById('stop'),
        clear = document.getElementById('clear'),
        seconds = 0, minutes = 0, hours = 3,
        isRunning = false,
        t;

    /* increments timer */
    function add() {
        seconds++;
        if (seconds >= 60) {
            seconds = 0;
            minutes++;
            if (minutes >= 60) {
                minutes = 0;
                hours++;
            }
        }

        h1.textContent = (hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds);

        timer();
    }

    /* decrements timer */
    function subtract() {
        seconds--;
        if (seconds < 0) {
            seconds = 59;
            minutes--;
            if (minutes < 0) {
                minutes = 59;
                hours--;
            }
        }

        h1.textContent = (hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds);

        timer();
    }
    function timer() {
        t = setTimeout(subtract, 1000);
    }
    /* enable following line to start timer automatically */
    //timer();


    /* Start button */
    start.onclick = function () {
        if (!isRunning) {
            timer();
            isRunning = true;
        }
    }

    /* Stop button */
    stop.onclick = function () {
        clearTimeout(t);
        isRunning = false;
    }

    /* Clear button */
    clear.onclick = function () {
        h1.textContent = "03:00:00";
        seconds = 0; minutes = 0; hours = 3;
        isRunning = false;
    }
});