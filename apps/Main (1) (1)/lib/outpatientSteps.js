function updateCurrentStep(steps) {
  const keys = Object.keys(steps);
  let lastCompletedIndex = -1;

  // Find the index of the last completed phase
  for (let i = 0; i < keys.length; i++) {
    if (steps[keys[i]].isCompleted) {
      lastCompletedIndex = i;
    }
  }

  // Reset all isCurrent properties
  keys.forEach((key) => {
    steps[key].isCurrent = false;
  });

  // Set the isCurrent property of the next phase
  if (lastCompletedIndex + 1 < keys.length) {
    steps[keys[lastCompletedIndex + 1]].isCurrent = true;
  }
}

const steps = {
  1: {
    name: "Medical appointment to be scheduled",
    isCompleted: false,
    isCurrent: false,
  },
  2: {
    name: "Medical appointment confirmed",
    isCompleted: false,
    isCurrent: false,
  },
  3: {
    name: "Medical appointment done",
    isCompleted: false,
    isCurrent: false,
  },
  4: {
    name: "Medical report done",
    isCompleted: false,
    isCurrent: false,
  },
  5: {
    name: "Medical plan defined & shared with patient",
    isCompleted: false,
    isCurrent: false,
  },
};

updateCurrentStep(steps);

return Object.values(steps);