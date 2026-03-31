// Map each Intervention Action -> allowed Intervention Types
const actionToTypes = {
  "Apprentice Reminder": ["Email", "Instant Message", "Other (please specify)", "Phone Call"],

  "BIL Actions": ["BIL Request Submitted", "BIL Return Conversation", "New BIL Conversation"],

  "Learning Adjustment": ["Adapted Content", "ALN Support Provided", "Extended Deadline", "Other (please specify)"],

  "Meeting Scheduled": [
    "Additional Coaching Session",
    "Call with Apprentice",
    "Call with Apprentice and Apprentice Manager",
    "Client Involved",
    "Launch Meeting",
    "Monthly Coaching Session",
    "Other (please specify)"
  ],

  "Non-Start Review": ["Coach Recommended Non-Start", "Recommend Continue", "Self-Selected Non-Start"],

  "Other": ["Other (please specify)"],

  "Referred Apprentice to": [
    "Additional Learning Needs (ALN)",
    "Community Coach (Tutor)",
    "Mental Health",
    "Safeguarding",
    "Other (please specify)"
  ],

  "Requested Support from": ["Apprentice Manager", "CSM", "Programme Lead", "Other (please specify)"],

  "Resources Shared": [
    "Additional Learning Resources",
    "Connect with Peers for Additional Support",
    "Other (please specify)"
  ],

  "Withdrawal Actions": ["Withdrawal Conversation", "Withdrawal Request Submitted"]
};

// Read what’s selected in the first multiselect
const raw = interventionActionsMultiselect2.value;

// Normalize values to an array of strings (works whether the multiselect returns strings or objects)
const selectedActions = Array.isArray(raw)
  ? raw.map(x => (x && typeof x === "object" ? x.value : x)).filter(Boolean)
  : raw
    ? [raw]
    : [];

// If nothing selected, show no options in the 2nd dropdown
if (selectedActions.length === 0) {
  return [];
}

// Union + de-dupe types across all selected actions
const types = selectedActions.flatMap(action => actionToTypes[action] || []);
const uniqueTypes = [...new Set(types)];

// Return as { label, value } objects for Retool
return uniqueTypes.map(t => ({ label: t, value: t }));
