({
    getLocalCurrency: function (nodeValue) {
     let locale = $A.get('$Locale');
    return nodeValue.toLocaleString(locale.userLocaleCountry) +' '+ $A.get('$Locale.currency');
    }
})