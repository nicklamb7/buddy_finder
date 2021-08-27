// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    allowInput: true,
    autoComplete: "off"
  });
}

export { initFlatpickr };
