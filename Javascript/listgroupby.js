function groupByField(list,field){
    list.reduce((r, a) => {

        r[field] = [...r[field] || [], a];
        return r;
    })
}
 

 function groupBy(data, property) {
  return data.reduce((acc, obj) => {
    const key = obj[property];
    if (!acc[key]) {
      acc[key] = [];
    }
    acc[key].push(obj);
    return acc;
  }, {});
}