const currentPage = {{ retoolContext.currentPage }};
const items = [
  {
    title: "Home",
    page: "Home",
    isSelected: currentPage === "Home",
  },
  {
    title: "Cases",
    isSelected: ["AllCases", "Case"].includes(currentPage),
    children: [
      {
        title: "My cases",
      },
      {
        title: "All cases",
        page: "AllCases",
      },
    ],
  },
  {
    title: "Tasks",
    isSelected: ["AllTasks"].includes(currentPage),
    children: [
      {
        title: "My tasks",
      },
      {
        title: "All tasks",
        page: "AllTasks",
      },
    ],
  },
  {
    title: "Interactions",
    isSelected: ["Interaction", "AllInteractions", "CallBack"].includes(
      currentPage
    ),
    children: [
      {
        title: "My interactions",
      },
      {
        title: "All interactions",
        page: "AllInteractions",
      },
      {
        title: "Call back",
        page: "CallBack",
      },
    ],
  },
  {
    title: "Tools",
  },
  {
    title: "Providers",
  },
  {
    title: "T&C",
  },
  {
    title: "Wiki"
  }
];

const result = [];
function flatten(items, parentLabel = null) {
  items.forEach((item) => {
    const { children, ...rest } = item;
    const newItem = { ...rest, parentLabel };
    result.push(newItem);

    if (children) {
      flatten(children, item.title);
    }
  });
}
flatten(items);

return result;
