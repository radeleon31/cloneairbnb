// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";


const initFlatpickr = () => {
    flatpickr(".datepicker", {
        "enableTime": true,
        // dateFormat: "D-m-Y-H-i",
        minDate: "today",
        maxDate: new Date().fp_incr(7) // 14 days from now
    });
}

export { initFlatpickr };