const colorBackground = () => {
  const colorPins = document.querySelectorAll(".bg-color-pin");
  const bodyColor = document.querySelector("html");
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

  const changeColor = (pin) => {
    const color = pin.target.classList[1];
    console.log(colors.value);

    if(color === "claret") {
      bodyColor.style.backgroundColor = colors.claret;
    }
    else if(color === "persianplum") {
      bodyColor.style.backgroundColor = colors.persianplum;
    } else {
      bodyColor.style.backgroundColor = colors.darkblue;
    }
  }

  colorPins.forEach(pin => pin.addEventListener("mouseover", changeColor));
}

export { colorBackground };
