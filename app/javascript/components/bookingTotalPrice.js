const bookingTotalPrice = () => {
    const endDate = document.querySelector("#booking_end_date")
    const startDate = document.querySelector("#booking_start_date")
    const price = document.querySelector("#price_total")
    if (endDate) {
        endDate.addEventListener("change", event => {
            const endDateUsingMomentJS = moment(endDate.value)
            const startDateUsingMomentJS = moment(startDate.value)
            const hoursDifferenceBetweenEndDateStartDate = endDateUsingMomentJS.diff(startDateUsingMomentJS, 'hours');
            const hours = parseInt(hoursDifferenceBetweenEndDateStartDate, 10);
            const priceHelicopter = parseInt(price.dataset.price, 10);
            price.innerText = hours * priceHelicopter;
        });
    }
} 

export { bookingTotalPrice }
