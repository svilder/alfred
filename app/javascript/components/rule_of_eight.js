const ruleOfEight = () => {
  const input = document.querySelector('#input-eight');
  const button = document.querySelector('#go-eight');
  const result = document.querySelector('#result-eight');

  const findUpperValue = (number, divided) => {
    console.log(number);
    console.log(divided);
    let test = 0
    do {
      number++
      let divided = number / 8;
      let test = Number.isInteger(divided);
    } while (test === true);
    console.log(number);
  }

  const multipleOfEight = () => {
    let number = input.value;
    let divided = number / 8;
    let test = Number.isInteger(divided);
    if (test === false) {
      console.log("faux !");
      result.innerHTML = "";
      result.insertAdjacentHTML('beforeend', `<i class="far fa-times-circle"></i>`);
    } else {
      console.log("vrai !");
      result.innerHTML = "";
      result.insertAdjacentHTML('beforeend', `<i class="far fa-check-circle"></i>`);
    }
    // suggestion
    findUpperValue(number, divided);
  }

  button.addEventListener('click', multipleOfEight);
}


export { ruleOfEight };
