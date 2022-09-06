import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="money"
export default class extends Controller {
  static targets = ['input'];

  connect() {
    this.format();
  }

  format() {
    const rawValue = this.setRawValue();
    if (rawValue.length > 0) {
      const options = {minimumFractionDigits: 2};
      const formattedValue = new Intl.NumberFormat('pt-BR', options).format(
        parseFloat(rawValue)/100
      );
      this.inputTarget.value = formattedValue;
    }
  }

  formatMoney(e) {
    e.preventDefault();
    const rawValue = this.setRawValue();
    this.inputTarget.value = rawValue/100;
    this.element.submit();
  }

  setRawValue() {
    return this.inputTarget.value.replace('.', '').replace(',', '').replace(/\D/g, '');
  }
}
