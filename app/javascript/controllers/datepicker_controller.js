import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr"; // Importation de Flatpickr

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element); // Initialise Flatpickr sur l'élément contrôlé
  }
}
