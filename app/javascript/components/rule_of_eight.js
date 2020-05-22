const ruleOfEight = () => {
  const input = document.querySelector('#input-eight');
  const button = document.querySelector('#go-eight');
  const result = document.querySelector('#result-eight');
  const result_sign = document.querySelector('#result-sign');

  const findUpperValue = (number) => {
    let sum = 0;
    do {
      number++;
      sum = number % 8
    } while (sum !== 0);
    result.insertAdjacentHTML('beforeend', `${number}`);
  }

  const findLowerValue = (number) => {
    let sum = 0;
    do {
      number--;
      sum = number % 8
    } while (sum !== 0);
    result.insertAdjacentHTML('beforeend', `${number} or `);
  }

  const multipleOfEight = () => {
    let number = input.value;
    let divided = number / 8;
    let test = Number.isInteger(divided);
    result.innerHTML = "";
    result_sign.innerHTML = "";
    if (test === false) {
      result_sign.insertAdjacentHTML('beforeend', `<i class="far fa-times-circle"></i>`);
    } else {
      result_sign.insertAdjacentHTML('beforeend', `<i class="far fa-check-circle"></i>`);
    }
    // suggestion
    findLowerValue(number);
    findUpperValue(number);
  }

  button.addEventListener('click', multipleOfEight);
}


export { ruleOfEight };
