import Sortable from "sortablejs"

// const list = document.querySelector("#results")

// const initSortable = () => {
//   Sortable.create(simpleList)
// }
// export { initSortable }


// Sortable.create(simpleList);

// Sortable.create(listWithHandle, {
//   handle: '.glyphicon-move', animation: 150
// });

var el = document.getElementById('items');
console.log(el);
var sortable = Sortable.create(el);
console.log(el);

export { sortable }
