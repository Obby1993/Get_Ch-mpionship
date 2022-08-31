import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="condition-devise"
export default class extends Controller {
  static targets = ["company", "checkbox", "company_info", "contact_info", "yes"];

  revealCompany() {
        this.checkboxTargets.forEach((item)=>{
          if (item.checked){
            if (item.value === "Organisateur") {
              // this.contact_infoTarget.classList.add("d-none");
              this.companyTarget.classList.remove("d-none");
            }else if (item.value === "Joueur"){
              this.companyTarget.classList.add("d-none");
              this.contact_infoTarget.classList.remove("d-none");
            } else if (item.value === "Les deux"){
              this.companyTarget.classList.remove("d-none");

            }
      }
    });
  }

  revealCompany_info() {
    this.yesTargets.forEach((item)=>{
      if (item.checked){
        if (item.value === "Oui") {
          this.company_infoTarget.classList.remove("d-none");
          this.contact_infoTarget.classList.remove("d-none");
        }else if (item.value === "Non"){
          this.contact_infoTarget.classList.remove("d-none");
          console.log("hell")
          this.company_infoTarget.classList.add("d-none");
        }
      }
    });
  }

 revealContact_info() {
  console.log(this.checkboxTargets);
  this.checkboxTargets.forEach((item)=>{
    if (item.checked){
      if (item.value === "Joueur") {
        this.contact_infoTarget.classList.remove("d-none");
      }
    }
  });

  }
}
