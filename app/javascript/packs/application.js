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
import { colorBackground } from "../components/color_background";
import { rgbToHex } from "../components/rgb_to_hex";
import { trixToolbarUnderlineButton } from "../components/trix_toolbar_underline_button";

document.addEventListener("turbolinks:load", function() {
  // calculPercent();
  ruleOfEight();
  clock();
  chrono();
  toggleTools();
  dragToDos();
  colorBackground();
  rgbToHex();
  trixToolbarUnderlineButton();
})

// Stimulus
// import "controllers";

require("trix")
require("@rails/actiontext")
