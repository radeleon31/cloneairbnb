const bookingTotalPrice = () => {
    const endDate = document.querySelector("#booking_end_date")
    const startDate = document.querySelector("#booking_start_date")
    const priceInput = document.querySelector("#price_total")
    const hoursInput = document.querySelector("#hour_total")
    if (endDate) {
        endDate.addEventListener("change", event => {
            const endDateUsingMomentJS = moment(endDate.value)
            const startDateUsingMomentJS = moment(startDate.value)
            const hoursDifferenceBetweenEndDateStartDate = endDateUsingMomentJS.diff(startDateUsingMomentJS, 'hours');
            const hours = parseInt(hoursDifferenceBetweenEndDateStartDate, 10);
            const priceHelicopter = parseInt(priceInput.dataset.price, 10);

            hoursInput.innerText = hours;
            priceInput.innerText = hours * priceHelicopter;
        });
    }
    // if (starDate) {
    //     endDate.addEventListener("change", event => {
    //         const endDateUsingMomentJS = moment(endDate.value)
    //         const startDateUsingMomentJS = moment(startDate.value)
    //         const hoursDifferenceBetweenEndDateStartDate = endDateUsingMomentJS.diff(startDateUsingMomentJS, 'hours');
    //         const hours = parseInt(hoursDifferenceBetweenEndDateStartDate, 10);
    //         const priceHelicopter = parseInt(priceInput.dataset.price, 10);

    //         hoursInput.innerText = hours;
    //         priceInput.innerText = hours * priceHelicopter;
    //     });
    // }
} 

export { bookingTotalPrice }
