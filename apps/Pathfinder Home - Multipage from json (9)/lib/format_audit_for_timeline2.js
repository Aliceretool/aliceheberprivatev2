const output = {{ formatDataAsArray(getPathfinderAudit_issue2.data) }}


for (let i = 0; i < output.length; i++) {
  let oldRecord = JSON.parse(output[i].old_record)
  let newRecord = JSON.parse(output[i].record)

  let differences = [];


  console.log(oldRecord, 'oldRecord')
  
    for (const key in oldRecord) {
      if (Object.prototype.hasOwnProperty.call(oldRecord, key)) {
        if ((oldRecord[key] !== newRecord[key])) {
          console.log('key',key)
          if (key != 'updated_at' && key != 'updated_by') {
            differences.push({
              'field': key,
              'old_value': oldRecord[key],
              'new_value': newRecord[key]
            })
          }
        }
      }
    }
  
    output[i].differences = differences;

  
    output[i].timelineOutput = output[i].op + ' by: ' + output[i].created_by + ' <br/> ' + output[i].differences.map(x => x.field + ' field from ' + x.old_value + ' to ' + x.new_value + ' <br>')
  }

return output