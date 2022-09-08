import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log("lol")
  }


  revealContent(event) {
    event.preventDefault()
    console.log("ca amrche")
    this.contentTarget.classList.toggle("d-none");
  }

  // reading(event) {

  // const url = this.formTarget.action
  // fetch(url, {
  //   method: "PATCH",
  //   headers: { "Accept": "text/plain" },
  //   body: new FormData(this.formTarget)
  // })
  //   .then(response => response.text())
  //   .then((data) => {
  //     console.log(data)
  //   })
  // }
}
