<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/">
    <Body>
        <provideCustomerRating xmlns="http://ws.service.rating.example.bpm.camunda.org/">
            <!-- Optional -->
            <arg0 xmlns="">
                <customerId>${customerId}</customerId>
                <customerSince>${customerSince?number_to_date?string("yyyy-MM-dd")}</customerSince>
            </arg0>
        </provideCustomerRating>
    </Body>
</Envelope>
