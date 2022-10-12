// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import Swal from "sweetalert2"
import "../javascript/main.js"

const swalWithBootstrapButtons = Swal.mixin({
  customClass: {
    confirmButton: 'btn-delete mx-4',
    cancelButton: 'btn-cancel'
  },
  buttonsStyling: false
})
if (window.location.href.includes('confirm=delete')) {
  swalWithBootstrapButtons.fire(
    'Deletado!',
    'Deletado com sucesso! 🎉',
    'success'
  )
}
