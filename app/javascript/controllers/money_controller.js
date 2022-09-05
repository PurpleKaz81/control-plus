import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="money"
export default class extends Controller {
  connect() {
    console.log('money connected');
  }
  format() {
    const rawValue = this.element.value.replaceAll('.', '').replaceAll(',', '').replace(/^0+/, '');
    console.log(rawValue);
    if (rawValue.length >= 2) {
      this.element.value = rawValue
    } else {
      const integerValue = rawValue.substring(0, rawValue.length - 2);
      const centsValue = rawValue.substring(rawValue.length - 2, rawValue.length);
      const formattedValue = `${integerValue},${centsValue}`;
      console.log(formattedValue);
      this.element.value = formattedValue
    }
  }
}
