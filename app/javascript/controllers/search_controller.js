import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  connect() {
    var $select = $("select").selectize();
    window.stateSelect = $select[0].selectize;
  }
}
