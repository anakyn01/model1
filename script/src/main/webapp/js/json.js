let Json = '{"employees":[' +
'{"firstName":"John","lastName":"Doe" },' +
'{"firstName":"Anna","lastName":"Smith" },' +
'{"firstName":"Peter","lastName":"Jones" }]}';

const transfer = JSON.parse(Json);
document.getElementById('json').innerHTML =
transfer.employees[1].firstName + "" + transfer.employees[1].lastName;