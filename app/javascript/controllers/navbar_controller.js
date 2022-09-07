import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const currentlyActive = document.querySelector(".active")
    const elementsDiv = document.querySelector("#navbar-elements")
    const list = document.querySelectorAll('.list');
    elementsDiv.addEventListener('mouseout', () => {
      list.forEach((item) =>
        item.classList.remove('active'));
      currentlyActive.classList.add('active');
    });

    const activeLink = (event) => {
      list.forEach((item) =>
      item.classList.remove('active'));
      event.currentTarget.classList.add('active');
    }
    list.forEach((item) =>
        item.addEventListener('mouseover', activeLink))
  }    
}
