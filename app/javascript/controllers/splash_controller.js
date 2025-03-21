import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="splash"
export default class extends Controller {

  connect() {
    // console.log("olá mundo");
    setTimeout(() => {
      this.element.classList.add("splash-intro")
    }, 1)
  }
}
