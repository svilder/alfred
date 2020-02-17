const calculPercent = () => {
  const input = document.querySelector('#percent');
  const button = document.querySelector('#go-percent');
  const result = document.querySelector('#result-percent');

  const insertResult = (num) => {
    result.innerHTML = "";
    result.insertAdjacentHTML('beforeend', `<p><i class="fas fa-long-arrow-alt-right"></i> ${num}€</p>`);
  };

  const calcul = () => {
    const number = input.value;
    const result_number = number - (number * 0.24)
    console.log(result_number);
    insertResult(result_number);
  };

  button.addEventListener('click', calcul);
}

export { calculPercent };
