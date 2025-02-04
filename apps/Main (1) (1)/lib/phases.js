function updateCurrentPhase(phases) {
  const keys = Object.keys(phases);
  let lastCompletedIndex = -1;

  // Find the index of the last completed phase
  for (let i = 0; i < keys.length; i++) {
    if (phases[keys[i]].isCompleted) {
      lastCompletedIndex = i;
    }
  }

  // Reset all isCurrent properties
  keys.forEach((key) => {
    phases[key].isCurrent = false;
  });

  // Set the isCurrent property of the next phase
  if (lastCompletedIndex + 1 < keys.length) {
    phases[keys[lastCompletedIndex + 1]].isCurrent = true;
  }
}

const phases = {
  open: {
    title: "Open",
    isCompleted: false,
    isCurrent: false,
  },
  qualify: {
    title: "Qualify",
    isCompleted: false,
    isCurrent: false,
  },
  solve: {
    title: "Solve",
    isCompleted: false,
    isCurrent: false,
  },
  operationalClosure: {
    title: "Operational closure",
    isCompleted: false,
    isCurrent: false,
  },
  financialClosure: {
    title: "Financial closure",
    isCompleted: false,
    isCurrent: false,
  },
};

phases.open.isCompleted = true;

updateCurrentPhase(phases);

return phases;
