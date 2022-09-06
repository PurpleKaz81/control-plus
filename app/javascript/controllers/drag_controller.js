
import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"


export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    let id = event.item.dataset.id
    let data = new FormData()
    data.append("position", event.newIndex + 1)

    fetch(this.data.get("url").replace(":id", id), {
      method: "PATCH",
      headers: { "Accept": "application/json" },
      body: data
    })
      .then(response => response.json())
      .then((data) => {
      })
  }
}
