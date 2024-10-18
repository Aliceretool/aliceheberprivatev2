const json = {{  getPathfinderAudit_issue2.rawData.record}}

function convertToCSV(objArray) {
    const array = typeof objArray !== 'object' ? JSON.parse(objArray) : objArray;
    let str = '';

    // Extract headers
    const headers = Object.keys(array[0]).join(',');
    str += headers + '\r\n';

    // Extract values
    array.forEach(obj => {
        let line = '';
        for (const key in obj) {
            if (line !== '') line += ',';
            const value = obj[key] === null ? '' : `"${String(obj[key]).replace(/"/g, '""')}"`;
            line += value;
        }
        str += line + '\r\n';
    });

    return str;
}

return convertToCSV(json)