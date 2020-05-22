const toggleTools = () => {

  const button = document.querySelector(".tools-icon");
  const rightBar = document.querySelector(".right-bar");
  const mainWrapper = document.querySelector(".main-wrapper");

  const toggleSideBar = () => {
    rightBar.classList.toggle("show");
    mainWrapper.classList.toggle("margin-right");
    button.classList.toggle("right-248");
  }

  if(button) {
    button.addEventListener('click', toggleSideBar);
  }
}

export { toggleTools };
