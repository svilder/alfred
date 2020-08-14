const colorBackground = () => {
  const colorPins = document.querySelectorAll(".bg-color-pin");
  const topBar = document.querySelector(".top-bar");
  const boxes = document.querySelectorAll(".box");
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

  const changeColor = (color) => {
    bodyColor.style.backgroundColor = color;
    if(topBar) { topBar.style.backgroundColor = color; };
    boxes.forEach(box => box.style.backgroundColor = color);


    document.cookie = `cookieBackgroundColor=${color}`;
    console.log("cookie");
    console.log(document.cookie);
    // console.log(cookie.cookieBackgroundColor);

  }

  const pickColorFromCookie = () => {
    const cookies = document.cookie.split(";");

  }

  const selectColor = (pin) => {
    const color = pin.target.classList[1];

    if(color === "claret") {
      changeColor(colors.claret);
    } else if(color === "persianplum") {
      changeColor(colors.persianplum);
    } else if(color === "darkchocolate") {
      changeColor(colors.darkchocolate);
    } else if(color === "darkjunglegreen") {
      changeColor(colors.darkjunglegreen);
    } else if(color === "phthalogreen") {
      changeColor(colors.phthalogreen);
    } else if(color === "prussianblue") {
      changeColor(colors.prussianblue);
    } else if(color === "oxfordblue") {
      changeColor(colors.oxfordblue);
    } else if(color === "darkoxfordblue") {
      changeColor(colors.darkoxfordblue);
    } else if(color === "darkpurple") {
      changeColor(colors.darkpurple);
    } else {
      changeColor(colors.darkblue);
    }
  }

  changeColor(colors.darkblue);
  colorPins.forEach(pin => pin.addEventListener("mouseover", selectColor));
}

export { colorBackground };
