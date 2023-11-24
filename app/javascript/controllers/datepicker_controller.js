import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {

  static values = {
    minDate: String,
    disabled: Array,
    price: String,
  }

  static targets = ["calendar", "total"]

  connect() {
    console.log(this.disabledValue)

    this.calendar = flatpickr(this.calendarTarget, {
      mode: "range",
      minDate: this.minDateValue,
      disable: this.disabledValue,
      onChange: (selectedDates) => {

        if(selectedDates.length === 2) {
          this.calculateDifference(selectedDates)
        }

      }
    })
  }

  calculateDifference(dates){
    const startDate = new Date(dates[0])
    const endDate = new Date(dates[1])

    let timeDiff = startDate - endDate;
    let daysDifference = timeDiff / (1000 * 60 * 60 * 24);
    const totalPrice = Math.abs(daysDifference * this.priceValue)

     this.totalTarget.innerText = `Total price: ${totalPrice} €`
  }
}
