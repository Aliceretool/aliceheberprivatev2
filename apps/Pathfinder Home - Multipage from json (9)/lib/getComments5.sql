SELECT * FROM comments

INNER JOIN user ON user.email = comments.created_by
  
WHERE issueID = {{tableProject3.selectedRow.issueID}}  

-- comment out {{urlparams.hash.issueID}}
