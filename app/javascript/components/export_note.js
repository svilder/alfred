const exportNote = () => {
  const button = document.querySelector('#share');
  const noteContent = document.querySelector('.note-content');

  const share = () => {
    console.log(noteContent.innerHTML);
  }

  button.addEventListener('click', share);
}

export  { exportNote };
