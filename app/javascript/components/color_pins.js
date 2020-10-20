const colorPins = () => {
  const colorPins = document.querySelectorAll(".bg-color-pin");
  const topBar = document.querySelector(".top-bar");
  const boxes = document.querySelectorAll(".box");
  const bodyColor = document.querySelector("body");

  const color = bodyColor.style.backgroundColor;

  if(topBar) { topBar.style.backgroundColor = color; };
  boxes.forEach(box => box.style.backgroundColor = color);
}

export { colorPins };
