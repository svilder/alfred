const toggleTools = () => {

  const button = document.querySelector(".tools-icon");
  const rightBar = document.querySelector(".right-bar");
  const mainWrapper = document.querySelector(".main-wrapper");

  const toggleSideBar = () => {

    console.log(rightBar);
    rightBar.classList.toggle("hide");
    mainWrapper.classList.toggle("margin-right");
    button.classList.toggle("right-zero");

    // if (rightBar.style.display === "flex") {
    //   rightBar.style.display = "none";
    //   mainWrapper.style.marginRight = "72px";
    //   button.style.right = "0";
    // } else {
    //   rightBar.style.display = "flex";
    //   mainWrapper.style.marginRight = "320px";
    //   button.style.right = "248px";
    // }
  }

  button.addEventListener('click', toggleSideBar);
}

export { toggleTools };
