// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";

// import { calculPercent } from "../components/calcul_percent";
import { ruleOfEight } from "../components/rule_of_eight";
import { clock } from "../components/clock";
import { chrono } from "../components/chrono";
import { toggleTools } from "../components/toggle_tools";
import { dragToDos } from "../components/drag_to_dos";
// import { colorBackground } from "../components/color_background";
import { rgbToHex } from "../components/rgb_to_hex";

document.addEventListener("turbolinks:load", function() {
  // calculPercent();
  ruleOfEight();
  clock();
  chrono();
  toggleTools();
  dragToDos();
  // colorBackground();
  rgbToHex();
})

// Stimulus
// import "controllers";

require("trix")
require("@rails/actiontext")

const Trix  = require("trix")
console.log("Config", Trix.config);

Trix.config.textAttributes.mark = {
  tagName: 'mark'
}
Trix.config.textAttributes.code1 = {
  tagName: 'pre'
}
Trix.config.textAttributes.underline = {
  tagName: 'u'
}

addEventListener("trix-initialize", function(event) {
  const toolbar = event.target.toolbarElement;
  const buttonUnderlineHTML = '<button type="button" class="trix-button trix-button--my-icon" data-trix-attribute="underline" title="Underline" tabindex="-1"><i class="fas fa-underline"></i></button>';
  const buttonCodeHTML = '<button type="button" class="trix-button trix-button--my-icon" data-trix-attribute="code1" title="Code" tabindex="-1"><i class="fas fa-terminal"></i></button>';
  const buttonMarkHTML = '<button type="button" class="trix-button trix-button--my-icon" data-trix-attribute="mark" title="Mark" tabindex="-1"><i class="fas fa-highlighter"></i></button>';

  toolbar.querySelector(".trix-button--icon-italic").insertAdjacentHTML("afterend", buttonUnderlineHTML);
  toolbar.querySelector(".trix-button--icon-code").remove();
  toolbar.querySelector(".trix-button--icon-quote").insertAdjacentHTML("afterend", buttonCodeHTML);
  toolbar.querySelector(".trix-button--icon-heading-1").insertAdjacentHTML("afterend", buttonMarkHTML);
});




