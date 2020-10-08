const rgbToHex = () => {
  const inputR = document.querySelector('#R');
  const inputG = document.querySelector('#G');
  const inputB = document.querySelector('#B');
  const button = document.querySelector('#go-hex');
  const result = document.querySelector('#result-hex');
  const hex_values = {
    0:  '0',
    1:  '1',
    2:  '2',
    3:  '3',
    4:  '4',
    5:  '5',
    6:  '6',
    7:  '7',
    8:  '8',
    9:  '9',
    10: 'A',
    11: 'B',
    12: 'C',
    13: 'D',
    14: 'E',
    15: 'F'
  }

  const insertResult = (hex_value) => {
    result.innerHTML = "";
    result.insertAdjacentHTML('beforeend', `<p><i class="fas fa-long-arrow-alt-right"></i> ${hex_value}</p>`);
  };

  const is_number_a_rgb_value = (n) => {
    if (n < 0) {
      n = 0
    } else if (n > 255) {
      n = 255
    } else {
      n
    }
    return n;
  }

  const convert = () => {
    const r = is_number_a_rgb_value(inputR.value);
    const g = is_number_a_rgb_value(inputG.value);
    const b = is_number_a_rgb_value(inputB.value);
    console.log(r / 16);
    console.log(g);
    console.log(b);
    const result = "#" + (r / 16) + (r % 16) + (g / 16) + (g % 16) + (b / 16) + (b % 16)

    insertResult(result);
  };

  button.addEventListener('click', convert);
}

export { rgbToHex };
