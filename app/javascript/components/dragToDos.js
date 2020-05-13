import { Swappable } from '@shopify/draggable';

const dragToDos = () => {
  const swappable = new Swappable(document.querySelectorAll('.todos-container'), {
    draggable: '.todos'
  });

  swappable.on('swappable:start', () => console.log('swappable:start'));
  swappable.on('swappable:swapped', () => console.log('swappable:swapped'));
  swappable.on('swappable:stop', () => console.log('swappable:stop'));
}

export { dragToDos };


