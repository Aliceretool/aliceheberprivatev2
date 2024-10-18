SELECT i.issueID, i.raw_data, i.references_oos_oot, i.equipment_no from issue i
WHERE i.issueID =  {{url.searchParams.issueID}}