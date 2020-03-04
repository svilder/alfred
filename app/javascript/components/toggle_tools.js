const toggleTools = () => {
  const button = document.querySelector(".tools-icon");
  const rightBar = document.querySelector(".right-bar");
  const mainWrapper = document.querySelector(".main-wrapper");
  const toggleSideBar = () => {
    console.log("pouet pouet");
    if (rightBar.style.display === "none") {
      rightBar.style.display = "flex";
      mainWrapper.style.marginRight = "320px";
      button.style.right = "248px";
    } else {
      rightBar.style.display = "none";
      mainWrapper.style.marginRight = "72px";
      button.style.right = "0";
    }
  }

  button.addEventListener('click', toggleSideBar);
}

export { toggleTools };
