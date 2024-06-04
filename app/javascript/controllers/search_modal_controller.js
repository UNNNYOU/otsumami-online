import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="search-modal"
export default class extends Controller {
  openModal() {
    const modal = document.querySelector(".main-modal");

    modal.classList.remove("fadeOut");
    modal.classList.add("fadeIn");
    modal.style.display = "flex";
  }

  modalClose() {
    const modal = document.querySelector(".main-modal");
    const closeButton = document.querySelectorAll(".modal-close");

    modal.classList.remove("fadeIn");
    modal.classList.add("fadeOut");
    setTimeout(() => {
      modal.style.display = "none";
    }, 500);
  }
}
