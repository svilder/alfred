const ruleOfEight = () => {
  const input = document.querySelector('#input-eight');
  const button = document.querySelector('#go-eight');
  const result = document.querySelector('#result-eight');

  const findUpperValue = (number) => {
    console.log(number);
      let sum = 0;
      do {
        number++;
        let sum = number % 8
      } while (sum !== 0);
      console.log(number);
  }


    //   let test = true
    // do {
    //   number++;
    //   let divided = number / 8;
    //   let test = Number.isInteger(divided);
    //   result = number % 8;
    //   console.log(result)
    // } while (test === false);
    // console.log(number);

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
