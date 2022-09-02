import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-by-player"
export default class extends Controller {
  static targets = ["form", "user"]

  create(event) {
    event.preventDefault()
    console.log(this.userTarget)
    const url = this.formTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
      })
  }

}
