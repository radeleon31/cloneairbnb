// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";


const initFlatpickr = () => {
    const inputs = document.querySelectorAll(".datepicker")
    inputs.forEach((input)=>{
        flatpickr(input, {
            "enableTime": true,
            // dateFormat: "D-m-Y-H-i",
            minDate: "today",
            maxDate: new Date().fp_incr(7) // 14 days from now
        });
    })
}

export { initFlatpickr };