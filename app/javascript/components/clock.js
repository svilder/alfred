const clock = () => {
  const buttonStart = document.querySelector('#start');
  const buttonStop = document.querySelector("#stop");
  buttonStop.classList.add("hide");
  const chronoResult = document.querySelector("#chrono-result");

  const displayResult = (hours, mins, seconds) => {
    console.log("displaying result");
    chronoResult.innerHTML = "";
    chronoResult.insertAdjacentHTML('beforeend', `<p>${hours} : ${mins} : ${seconds}</p>`);
  }

  const updateButton = () => {
    console.log("updating button");
    buttonStart.classList.add("hide");
    buttonStop.classList.remove("hide");
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
      const seconds = Math.floor(calcul / 1000);
      const mins = Math.floor(seconds / 60);
      const hours = Math.floor(mins / 60);

      buttonStart.classList.remove("hide");
      buttonStart.classList.add("mr-3");
      buttonStop.classList.add("hide");
      displayResult(hours, mins, seconds);
    });

  }

  buttonStart.addEventListener('click', startClock);
}

export { clock };
