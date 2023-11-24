import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="toggle"
export default class extends Controller {


  static targets = ["toggleableElement", "button", "searchbar"]

  show(e) {
    this.toggleableElementTarget.classList.toggle("d-none")
    if (this.toggleableElementTarget.classList.contains("d-none")) {
      this.buttonTarget.innerText = "Log in"
    } else {
      this.buttonTarget.innerText = "Back"
   }
  }
}
