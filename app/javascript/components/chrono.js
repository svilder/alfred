const chrono = () => {
  const buttonStart = document.querySelector('#start');
  const buttonStop = document.querySelector("#stop");
  buttonStop.classList.add("hide");
  const chronoResult = document.querySelector("#chrono-result");

  const displayResult = (hours, mins, seconds) => {
    console.log("displaying result");
    buttonStart.classList.add("mr-3");
    chronoResult.innerHTML = "";
    chronoResult.insertAdjacentHTML('beforeend', `<p>${hours} : ${mins} : ${seconds}</p>`);
  }

  const updateButton = () => {
    console.log("updating button");
    chronoResult.innerHTML = "";
    buttonStart.classList.add("hide");
    buttonStop.classList.remove("hide");
  }

  const resetButton = () => {
    buttonStart.classList.remove("hide");
    buttonStop.classList.add("hide");
  }

  const startClock = (event) => {
    console.log("inside the machiiiine");
    const beginTime = new Date().getTime();
    console.log(beginTime);
    updateButton();
    buttonStop.addEventListener('click', () => {
      console.log("clicked on stop !")
      const endTime = new Date().getTime();
      console.log(endTime);

      const calcul = endTime - beginTime;
      let seconds = Math.floor(calcul / 1000);
      let mins = Math.floor(seconds / 60);
      let hours = Math.floor(mins / 60);
      if (seconds > 60) {
        seconds = seconds - (mins * 60)
      }
      if (mins > 60) {
        mins = mins - (hours * 60)
      }

      resetButton();
      buttonStart.classList.remove("mr-3");

      displayResult(hours, mins, seconds);
    });
  }

  buttonStart.addEventListener('click', startClock);
}

export { chrono };
