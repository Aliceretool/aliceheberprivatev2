SELECT * FROM comments

INNER JOIN user ON user.email = comments.created_by
  
WHERE issueID =  {{url.searchParams.issueID}}


