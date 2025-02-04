const currentCategoryId = {{  currentTask.value?.category_id}};
const categories = {{  GetTaskCategories.data || [] }};

const selectedCategory = categories.find((cat) => cat.id === currentCategoryId);

return selectedCategory
  ? { label: selectedCategory.name, value: selectedCategory.id }
  : { label: selectedCategory.name, value: selectedCategory.id };
