const rgbToHex = () => {
  const inputR = document.querySelector('#R');
  const inputG = document.querySelector('#G');
  const inputB = document.querySelector('#B');
  const button = document.querySelector('#go-hex');
  const result = document.querySelector('#result-hex');
  const hex_valuesee = {
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

  const hex_values = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F']

  const insertResult = (hex_value) => {
    result.innerHTML = "";
    result.insertAdjacentHTML('beforeend',
      `<div class="color-hex" style="background-color: ${hex_value}"></div>${hex_value}</div>`
    );
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
    const result = "#" +
      hex_values[Math.floor(r / 16)] +
      hex_values[(r % 16)] +
      hex_values[Math.floor(g / 16)] +
      hex_values[(g % 16)] +
      hex_values[Math.floor(b / 16)] +
      hex_values[(b % 16)];
    insertResult(result);
  };

  button.addEventListener('click', convert);
}

export { rgbToHex };
