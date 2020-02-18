const ruleOfEight = () => {
  const input = document.querySelector('#input-eight');
  const button = document.querySelector('#go-eight');
  const result = document.querySelector('#result-eight');

  const findUpperValue = (number) => {
    console.log(number);
    do {
      number++;
    } while ((number % 8) !== 0);
    console.log(number);
  }
  // let number = 30;
  // do {
  //   number ++;
  //   result = number % 8
  //   console.log(result)
  // } while (result !== 0);
  //  console.log(number)

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
    findUpperValue(number);
  }

  button.addEventListener('click', multipleOfEight);
}


export { ruleOfEight };
