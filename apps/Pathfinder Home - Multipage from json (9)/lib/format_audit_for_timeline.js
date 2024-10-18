const fieldNameMapping = {
    'department_manager': 'Dep. Manager',
    'batch_no': 'Batch No',
    'classification_severity_value': 'Classification Severity',
    'classification_type_value': 'Classification Type',
    'created_at': 'Created At',
    'created_by': 'Created By',
    'corrective_action': 'Corrective Action',
    'description': 'Description',
    'due_date': 'Due Date',
    'id': 'ID',
    'issue_no': 'Issue No',
    'issue_type_value': 'Issue Type',
    'location': 'Location',
    'op': 'Operation',
    'preventive_action': 'Preventive Action',
    'reason': 'Reason',
    'status_value': 'Status',
    'updated_at': 'Updated At',
    'updated_by': 'Updated By',
    'assigned_to': 'Assigned To',
    'classification_recurrence_value':' Classification Recurrence Value',
  'evaluation':'Evaluation',
  'choose_QP_value':'QP Value',
  'classification_root_cause_value':'Classification Root Cause Value',
  'classification_notification_value':'Classification Notification Value',
  'classification_disposition_value':'Classification Disposition Value',
  'classification_evaluation_of_related_value':'Classification Evaluation Value',
  'responsible_department_value':'Responsible Department Value',
  'issue':'Issue',
  'preventative_action':'Preventative Action',
  'equipment_effected':'Equip. Effected',
    'equipment_effected_comment':'Equip. Effected Comment',
  'concerned_users':'Concerned Users',
  'product_effected':'Product Effected',
  'product_effected_comment':'Product Effected Comment',
  'code':'Code',
  
    // Add other field name mappings as needed
  };
  
let output = {{ formatDataAsArray(getPathfinderAudit_issue.data) }}

for (let i = 0; i < output.length; i++) {
  let oldRecord = JSON.parse(output[i].old_record)
  let newRecord = JSON.parse(output[i].record)

  let differences = [];
  //Sets up all differences
    for (const key in oldRecord) {
      if (Object.prototype.hasOwnProperty.call(oldRecord, key)) {
        if ((oldRecord[key] !== newRecord[key])) {
          //console.log('key',key)
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
  
  let differencesNoID = [];
  //Sets up all differences with ID-columns
   for (const key in oldRecord) {
      if (Object.prototype.hasOwnProperty.call(oldRecord, key)) {
        if ((oldRecord[key] !== newRecord[key]) && (!key.includes('ID'))) {
          //console.log('key',key)
          if (key != 'updated_at' && key != 'updated_by') {
            differencesNoID.push({
              'field': key,
              'old_value': oldRecord[key],
              'new_value': newRecord[key]
            })
          }
        }
      }
    }
    output[i].differencesNoID = differencesNoID;
//  Below is the 
//  An audit trail record should typically include the following elements:
//x	User ID: Identifier of the user who performed the action.
//x	Timestamp: Exact date and time the action was performed.
//x	Action Type: Nature of the action (e.g., create, modify, delete).
//•	Data Affected: Specific data or records that were affected by the action.
//•	Old Value: Previous value before the change (if applicable).
//•	New Value: New value after the change (if applicable).
//x	Reason for Change: Description or reason for the action, particularly for modifications or deletions.

// Some code snippets to create more easily accessible objects to populate audittrail
    const statusDifference = output[i].differences.find(x => x.field === 'status_value');
      if (statusDifference) {
          output[i].statusValue = statusDifference;}

    const reason = output[i].differences.find(x => x.field === 'reason');
      if (reason) {
          output[i].reason = reason;}

    const assigned_to = output[i].differences.find(x => x.field === 'assigned_to');
      if (assigned_to) {
          output[i].assigned_to = assigned_to;}    

    const corrective_action = output[i].differences.find(x => x.field === 'corrective_action');
      if (corrective_action) {
          output[i].corrective_action = corrective_action;}  

    const preventive_action = output[i].differences.find(x => x.field === 'preventive_action');
      if (preventive_action) {
          output[i].preventive_action = preventive_action;}  

    const classification_severity_value = output[i].differences.find(x => x.field === 'classification_severity_value');
      if (classification_severity_value) {
          output[i].classification_severity_value = classification_severity_value;}
  
    output[i].timelineHeader = output[i].op + ' by: ' + output[i].created_by
  
    output[i].timelineOutput = output[i].op + ' by: ' + output[i].created_by +' '+ output[i].differencesNoID.map(x => x.field + ' <br/> ' +' field from ' + '<del> ' + x.old_value + '</del>' + ' to ' +  '<ins>' + x.new_value + '</ins>'+ ' <br>')
  }

// Super non-performant way to rename field-values
output.forEach(item => {
  // Iterate over the differencesNoID array
  item.differencesNoID.forEach(difference => {
    // Rename the field based on the fieldNameMapping object
    if (fieldNameMapping[difference.field]) {
      difference.field = fieldNameMapping[difference.field];
    }
  });
});

//Remove those with no decent changes
output = output.filter(item => item.differencesNoID.length > 0);
//newest first
output.sort((a, b) => b.id - a.id);
return output