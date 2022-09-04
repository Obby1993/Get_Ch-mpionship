import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown"
export default class extends Controller {
  static targets = ["endtime", "days", "hours", "minutes", "seconds"]

  connect() {
    console.log("Hello from our first Stimulus controller");
    const innerEndtime = this.endtimeTarget.innerHTML
      console.log(innerEndtime)
    /* getTimeRemaining(innerEndtime); */
    const today = new Date()
    console.log(today.parse("%d-%m-%Y"));
    const total = innerEndtime - today.parse("%d-%m-%Y")
    console.log(total)

  }


  getTimeRemaining(endtime) {
    const total = Date.parse(endtime) - Date.parse(new Date());
    const seconds = Math.floor((total / 1000) % 60);
    const minutes = Math.floor((total / 1000 / 60) % 60);
    const hours = Math.floor((total / (1000 * 60 * 60)) % 24);
    const days = Math.floor(total / (1000 * 60 * 60 * 24));
    return {
      total,
      days,
      hours,
      minutes,
      seconds,
    };
  }

  /* initializeClock(id) {
    if(endtime) {
      const innerEndtime = this.endtimeTarget.innerHTML
      console.log(innerEndtime)

      function updateClock() {
        const t = getTimeRemaining(innerEndtime);

        daysSpan.innerHTML = t.days;
        hoursSpan.innerHTML = ("0" + t.hours).slice(-2);
        minutesSpan.innerHTML = ("0" + t.minutes).slice(-2);
        secondsSpan.innerHTML = ("0" + t.seconds).slice(-2);

        if (t.total <= 0) {
          clearInterval(timeinterval);
        }
      }

      updateClock();
      const timeinterval = setInterval(updateClock, 1000);
    }

  } */
}
