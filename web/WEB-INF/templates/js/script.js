function hideDateField(textFieldId, dateFieldId) {
    let textField = document.getElementById(textFieldId);
    let dateField = document.getElementById(dateFieldId);

    const date = new Date(dateField.value);

    if (!isNaN(date)) {

        let day = date.getDate();
        let month = date.getMonth();
        month++;
        let year = date.getFullYear();

        if (day < 10) {
            day = "0" + day;
        }

        if (month < 10) {
            month = "0" + month;
        }

        textField.value = day + "." + month + "." + year;
    } else {
        textField.value = "";
    }

    textField.hidden = false;
    dateField.hidden = true;
}

function showDateField(textFieldId, dateFieldId) {
    let textField = document.getElementById(textFieldId);
    let dateField = document.getElementById(dateFieldId);

    textField.hidden = true;
    dateField.hidden = false;
}