import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="form-by-player"
export default class extends Controller {
  static targets = ["form", "user", "affiche"]
  static values = { nbPlayer: Number,
    selectPlayerIds: Array }

  connect() {

   this.listTeam = this.selectPlayerIdsValue
   console.log(this.listTeam)
  //  console.log("hello")
  console.log(`${this.nbPlayerValue}`)
  }

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

      const equipier = `<li>${this.userTarget.options[this.userTarget.options.selectedIndex].textContent}</li>`;

      console.log(this.listTeam);

      if (this.listTeam.includes(this.userTarget.options[this.userTarget.options.selectedIndex].textContent) || this.nbPlayerValue<=this.listTeam.length) {
        console.log("fuck")
      } else {
        console.log("olee")
        this.listTeam.push(this.userTarget.options[this.userTarget.options.selectedIndex].textContent);
        console.log(this.listTeam.length);
        this.afficheTarget.insertAdjacentHTML("beforeend", equipier);
        this.userTarget.value =""
      };
     })

  }

  delete(event) {

  }
}
