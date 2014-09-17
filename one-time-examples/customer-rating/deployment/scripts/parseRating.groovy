returnedRating = S(response)
    .childElement("Body")
    .childElement("http://ws.service.rating.example.bpm.camunda.org/", "provideCustomerRatingResponse")
    .childElement(null, "return");

customerId = returnedRating.childElement("customerId").textContent();
ratingScore = returnedRating.childElement("ratingScore").textContent();

rating = S("{}").prop("customerId", customerId).prop("rating", ratingScore);

if (connector.getVariable("customerRatings") == null) {
    customerRatings = "[]";
}

return S(customerRatings).append(rating).toString();
