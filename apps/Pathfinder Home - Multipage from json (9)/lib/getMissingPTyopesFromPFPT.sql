insert into project_field_project_type (project_field_project_typeID, project_fieldID,isActive, project_typeID)
select MID(UUID(),1,36), pf.project_fieldID, pt.isActive, pt.project_typeID
from project_type pt 
left join project_field_project_type pfpt 
on pt.project_typeID = pfpt.project_typeID
inner join project p 
on p.projectID = pt.projectID 
inner join project_field pf 
on pf.projectID = p.projectID 
where pfpt.project_typeID is null