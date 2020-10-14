const trixToolbarUnderlineButton = () => {
  const Trix  = require("trix")
  console.log("Config", Trix.config);

  // Trix.config.blockAttributes.heading2 = {
  //   tagName: 'h2'
  // }
  // Trix.config.blockAttributes.heading3 = {
  //   tagName: 'h3'
  // }
  Trix.config.textAttributes.underline = {
    tagName: 'u'
  }

  addEventListener("trix-initialize", function(event) {
    const buttonHTML = '<button type="button" class="trix-button trix-button--icon-underline" data-trix-attribute="underline" title="Underline" tabindex="-1"><i class="fas fa-underline"></i></button>'

    event.target.toolbarElement.querySelector(".trix-button--icon-italic").insertAdjacentHTML("afterend", buttonHTML)
  });
}

export { trixToolbarUnderlineButton };
