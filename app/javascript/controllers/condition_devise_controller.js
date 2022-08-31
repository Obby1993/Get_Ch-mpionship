import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="condition-devise"
export default class extends Controller {
  static targets = ["company", "checkbox", "company_info", "contact-info", "yes"];

  revealCompany() {
        this.checkboxTargets.forEach((item)=>{
          if (item.checked){
            if (item.value === "Organiser" || item.value === "Both") {
              this.companyTarget.classList.remove("d-none");
            }
          }
        // console.log(item.value)
    });
  }

  revealCompany_info() {
    console.log(this.yesTargets);
    this.yesTargets.forEach((item)=>{
        if (item.checked){
          if (item.value === "Yes") {
            this.company_infoTarget.classList.remove("d-none");
          }
        }
          console.log(item.value)
      });
      }

}
