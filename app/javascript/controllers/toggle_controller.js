import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["toggleableElement", "button", "searchbar"]

  show(e) {
    this.toggleableElementTarget.classList.toggle("d-none")
    // this.buttonTarget.classList.add("d-none")
    if (this.toggleableElementTarget.classList.contains("d-none")) {
      this.buttonTarget.classList.remove("d-none")
    } else {
      this.buttonTarget.classList.add("d-none")
    }
    if (this.toggleableElementTarget.classList.contains("d-none")) {
      this.searchbarTarget.classList.remove("d-none")
    } else {
      this.searchbarTarget.classList.add("d-none")
    }
  }
}
