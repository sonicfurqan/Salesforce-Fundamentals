({
    getLocalDate: function (nodeValue) {
        $A.localizationService.UTCToWallTime(new Date(nodeValue), $A.get('$Locale.timezone'), function (offSetDateTime) {
            nodeValue = offSetDateTime;
        });
        nodeValue = $A.localizationService.formatDateTimeUTC(nodeValue, $A.get('$Locale').dateFormat + ' ' + $A.get('$Locale').timeFormat);
        return nodeValue
    }
})