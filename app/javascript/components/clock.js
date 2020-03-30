const clock = () => {
  // get the element clock
  // get the button start

  const displayResult = (resultTime) {
    // display the calcul of the chronometer
  }

  const calculTime = (beginTime, endTime) {
    // endTime - beginTime
  }

  const getTime = (event) = {
    // get the time of the event with seconds
  }

  const updateButton = () => {
    // when clicked, add class "stop" to button
    // (optionnal) add a clock running display
  }

  const startClock = (event) => {
    const beginTime = getTime(event);
    updateButton();
    // get the button stop (same component)
    // when "stop" clicked, get the time with seconds of the click event
    buttonStop.addEventListener(click, () => {
      const endTime = getTime();
      // and remove class "stop" of button (avec this)
    });
    resultTime = calculTime(beginTime, endTime);
    displayResult(resultTime);
  }

  button.addEventListener(click, startClock());
}
