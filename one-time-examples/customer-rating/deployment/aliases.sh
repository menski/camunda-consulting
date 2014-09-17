AUTH_URL="http://localhost:8080/camunda/api/admin/auth/user/default/login/admin"
REST_BASE="http://localhost:8080/camunda/api/engine/engine/default"
ACCEPT_JSON="Accept:application/json"
HTTP="http --print Hhb --session=demo"

alias login="$HTTP --form POST $AUTH_URL $ACCEPT_JSON username=demo password=demo"
alias deploy="$HTTP --form POST $REST_BASE/deployment/create $ACCEPT_JSON deployment-name=customer-rating enable-duplicate-filtering=true process.bpmn@customer-rating.bpmn count.groovy@count.groovy parseRating.groovy@parseRating.groovy restPayload.ftl@restPayload.ftl soapEnvelope.ftl@soapEnvelope.ftl"
alias start="$HTTP json POST $REST_BASE/process-definition/key/customer-rating/start"
