import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-by-player"
export default class extends Controller {
  static targets = ["form", "user", "affiche"]

  create(event) {
    event.preventDefault()
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
    // console.log(this.afficheTarget)
    console.log(this.userTarget.options[this.userTarget.options.selectedIndex].textContent);
    const equipier = `<li>${this.userTarget.options[this.userTarget.options.selectedIndex].textContent}</li>`;
    this.afficheTarget.insertAdjacentHTML("beforeend", equipier);
    this.userTarget.value =""

  }

}
