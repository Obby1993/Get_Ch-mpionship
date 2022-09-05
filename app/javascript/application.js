// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"


import { initializeClock } from "./plugins/countdown"

window.addEventListener('turbo:load', () => {
  initializeClock()
});
