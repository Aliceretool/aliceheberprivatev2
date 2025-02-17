let objects = getAll.data

const object = objects.find(item => item.name === "marmelade.jpg");

const id = object ? object.id : null;  

return id