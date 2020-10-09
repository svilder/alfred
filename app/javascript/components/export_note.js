const exportNote = () => {
  const insertContent = (content) => {
    sharePage.innerHTML = "";
    sharePage.insertAdjacentHTML('beforeend', content);
    console.log(content);
  };



  if (document.querySelector('#share')) {
    const button = document.querySelector('#share');
    const noteContent = document.querySelector('.note-content');
    if (document.querySelector('.share-page')) {
      const sharePage = document.querySelector('.share-page');
      sharePage.addEventListener('load', insertContent(noteContent));
    }
  }
}

export  { exportNote };
