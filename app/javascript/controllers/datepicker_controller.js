import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {

  static values = {
    minDate: String
  }

  connect() {
    flatpickr(this.element, {
      mode: "range",
      minDate: this.minDateValue})
  }
}