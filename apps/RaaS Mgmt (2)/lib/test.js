const matches = (row, rv) => {
  const fields = aggregate_on_multi_switch.data.map(item => item.value);

  const res = fields.every(field => {
    const includeFieldInCheck = aggregate_on_multi_switch.value.includes(field);

    const check = !includeFieldInCheck || (includeFieldInCheck && rv[field] === row[field]);
    
    return check;
  });

  return res;
};