import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"];

  static values = {isOpen: {type: Boolean, default: false}};

  connect() {
    console.log("Connected");
  };

  static targets = ["ariaExpander"];

  toggle(event) {
    const expandedPresent = this.element.classList.contains("expanded");
    this.element.classList.toggle("expanded", !expandedPresent);

    this.ariaExpanderTargets.forEach((el) => {
      el.setAttribute("aria-expanded", expandedPresent);
    });

  }

  closeOnEscape(event) {
    if (event.key === "Escape") {
      if (this.element.classList.contains("expanded")) {
        this.toggle(event);
      }
    }
  }

  // menu() {
  //   // console.log(this.hideTarget)
  //   this.isOpenValue ? this.hidden() : this.open;
  //   this.isOpenValue = !this.isOpenValue;
  // };

  // open() {
  //   this.menuTarget.style.display = "block";
  // };

  // hidden() {
  //   this.menuTarget.style.display = "none";
  // };
};
