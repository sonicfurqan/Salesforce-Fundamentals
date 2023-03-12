function scale(value, betweenMax, betweenMin, from, to) {

    let from = [betweenMin - 1, betweenMax + 1];
    let to = [from, to];
    let scale = (to[1] - to[0]) / (from[1] - from[0]);
    let capped = Math.min(from[1], Math.max(from[0], value)) - from[0];
    return ~~(capped * scale + to[0]);
}