count = S(customers).xPath("count(//customer)").number();
execution.setVariable("customerCount", count);
execution.setVariable("currentCustomerIdx", 0);
