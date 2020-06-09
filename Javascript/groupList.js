//groups list by value provided in key field
function groupBy(list, key) {
    return list.reduce((r, a) => {
        let tempkey = a[key] || 'None';
        r[tempkey] = [...r[tempkey] || [], a];
        return r;
    }, {});
}