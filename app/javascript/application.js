// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import Swal from "sweetalert2"
import "../javascript/faq.js"

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

// document.addEventListener('turbolinks:load', () => {
//   console.log("dude")

//   let main_navigation = document.getElementsByClassName('main-nav');
//   let main_indicator = document.getElementById('indicator');

//   main_navigation.map(el => {

//     console.log('WORKS', el);

//     el.addEventListener('mouseover', function() {
//       console.log('Event triggered');
//     });
//   });
// });
