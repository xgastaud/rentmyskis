function setPrice() {

  // selectionner les elements avec la class booking-date
  const dates = document.querySelectorAll(".booking-date");
  // boucler sur le resultat
  dates.forEach((date) => {
    date.addEventListener("change", (event) => {
      console.log(event.currentTarget);
     // check if date includes to
      if (event.currentTarget.value.includes("to")) {
        const dateString = event.currentTarget.value;
        const breakdownPosition = dateString.indexOf("to", 0);
        const startDateString = dateString.substr(0, breakdownPosition-1);
        const endDateString = dateString.substr(breakdownPosition+3, dateString.length);
        const startDate = Date.parse(startDateString);
        const endDate = Date.parse(endDateString);
        console.log(endDate-startDate);
        const oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
        const diffDays = Math.round(Math.abs((startDate - endDate)/(oneDay)));
        const price = document.getElementById("js-product-price");
        const budget = Math.round(Number(price.innerHTML)*diffDays);
        const budgetHTML = document.getElementById("js-budget");
        budgetHTML.innerHTML = budget;
      }
    });
  });
    // pour chaque input on addeventlistener le 'change'
      // recupere la start date
      // recuperer la end date
      // difference entre les 2
      // calcul du prix total
      // injecter le prix dans le dom
}
export {setPrice};
