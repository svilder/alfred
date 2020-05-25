const colorBackground = () => {
  const colorPins = document.querySelectorAll(".bg-color-pin");
  const topBar = document.querySelector(".top-bar");
  const bodyColor = document.querySelector("body");
  const colors = {
    claret:          '#580C1F',
    persianplum:     '#74121D',
    darkchocolate:   '#1E2019',
    darkjunglegreen: '#102012',
    phthalogreen:    '#1F3323',
    prussianblue:    '#2F394D',
    darkblue:        '#1A1B80',
    oxfordblue:      '#001C42',
    darkoxfordblue:  '#000434',
    darkpurple:      '#261132'
  }
  bodyColor.style.backgroundColor = colors.darkblue;
  topBar.style.backgroundColor = colors.darkblue;

  const changeColor = (pin) => {
    const color = pin.target.classList[1];

    if(color === "claret") {
      bodyColor.style.backgroundColor = colors.claret;
      topBar.style.backgroundColor = colors.claret;
    } else if(color === "persianplum") {
      bodyColor.style.backgroundColor = colors.persianplum;
      topBar.style.backgroundColor = colors.persianplum;
    } else if(color === "darkchocolate") {
      bodyColor.style.backgroundColor = colors.darkchocolate;
      topBar.style.backgroundColor = colors.darkchocolate;
    } else if(color === "darkjunglegreen") {
      bodyColor.style.backgroundColor = colors.darkjunglegreen;
      topBar.style.backgroundColor = colors.darkjunglegreen;
    } else if(color === "phthalogreen") {
      bodyColor.style.backgroundColor = colors.phthalogreen;
      topBar.style.backgroundColor = colors.phthalogreen;
    } else if(color === "prussianblue") {
      bodyColor.style.backgroundColor = colors.prussianblue;
      topBar.style.backgroundColor = colors.prussianblue;
    } else if(color === "oxfordblue") {
      bodyColor.style.backgroundColor = colors.oxfordblue;
      topBar.style.backgroundColor = colors.oxfordblue;
    } else if(color === "darkoxfordblue") {
      bodyColor.style.backgroundColor = colors.darkoxfordblue;
      topBar.style.backgroundColor = colors.darkoxfordblue;
    } else if(color === "darkpurple") {
      bodyColor.style.backgroundColor = colors.darkpurple;
      topBar.style.backgroundColor = colors.darkpurple;
    } else {
      bodyColor.style.backgroundColor = colors.darkblue;
      topBar.style.backgroundColor = colors.darkblue;
    }
  }

  colorPins.forEach(pin => pin.addEventListener("mouseover", changeColor));
}

export { colorBackground };
