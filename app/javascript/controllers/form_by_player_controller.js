import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-by-player"
export default class extends Controller {
  static targets = ["form_player"]

  connect(){console.log("hello")}

  create(event) {
    event.preventDefault()
    const url = this.form_playerTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.form_playerTarget)
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
      })
      
  }
}
