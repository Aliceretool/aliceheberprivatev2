SELECT project_typeID, project_type, pt.projectID, pt.isActive
FROM project_type pt
  LEFT JOIN project p ON
    pt.projectID = pt.projectID