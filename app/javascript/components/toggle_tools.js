const toggleTools = () => {

  const button = document.querySelector(".tools-icon");
  const rightBar = document.querySelector(".right-bar");
  const mainWrapper = document.querySelector(".main-wrapper");

  const toggleSideBar = () => {

    console.log(rightBar);
    rightBar.classList.toggle("hide");
    mainWrapper.classList.toggle("margin-right");
    button.classList.toggle("right-zero");
  }

  button.addEventListener('click', toggleSideBar);
}

export { toggleTools };
