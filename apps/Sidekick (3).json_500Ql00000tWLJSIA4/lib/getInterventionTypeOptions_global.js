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

function formatTemplateForTextbox(html) {
  if (!html) return null;

  return html
    // Preserve links as readable text
    .replace(/<a [^>]*href="([^"]+)"[^>]*>(.*?)<\/a>/gi, "$2 ($1)")

    // Turn list items into bullets
    .replace(/<li>\s*/gi, "• ")
    .replace(/<\/li>\s*/gi, "\n")

    // Turn breaks/blocks into line breaks
    .replace(/<br\s*\/?>/gi, "\n\n")
    .replace(/<\/p>/gi, "\n\n")
    .replace(/<p[^>]*>/gi, "")
    .replace(/<\/ul>/gi, "\n")
    .replace(/<ul[^>]*>/gi, "")

    // Remove formatting tags but keep inner text
    .replace(/<\/?(strong|b|i|em)>/gi, "")

    // Remove any other HTML tags
    .replace(/<[^>]+>/g, "")

    // Clean up common HTML entities / legacy escaping
    .replace(/''/g, "'")
    .replace(/&nbsp;/g, " ")
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&quot;/g, '"')

    // Tidy spacing
    .replace(/[ \t]+\n/g, "\n")
    .replace(/\n{3,}/g, "\n\n")
    .trim();
}

// Only intervention types with a non-null template need an entry here.
// Everything else will fall back to null.
const templatesByType = {
  "Apprentice Manager": `<strong>Reason for AM support request</strong>: [ADD IN REASON FOR AM SUPPORT REQUEST]<br /><br />

<strong>Support Context</strong>: [ADD IN SUMMARY OF THE CHALLENGE]<br /><br />

<strong>Requested support</strong>: [ADD IN A SPECIFIC ASK OF THE SUPPORT YOU WANT FROM YOUR AM]<br /><br />

<i>Note: You will need to email or speak to the AM directly. Completing this intervention log will not automate any AM comms.</i>`,

  "BIL Request Submitted": `<strong>Reason for the Break in Learning under the Multiverse BIL Policy</strong>: [ENTER TOP-LEVEL REASON e.g JURY DUTY]<br /><br />

<strong>Planned start & return date</strong>: [START DATE - X/X/X, RETURN DATE - X/X/X]<br /><br />

<strong>Return module</strong>: [THEY MUST COME BACK TO THE SAME POINT ON PROGRAMME]<br /><br />

<strong>Return cohort</strong>: [INPUT PLANNED RETURN COHORT IF KNOW, OR MARK AS UNKNOWN].<br /><br />

<strong>Return coach</strong>: [INPUT PLANNED RETURN COACH IF KNOW, OR MARK AS UNKNOWN].<br /><br />

<strong>Return programme version</strong>: [IF RELEVANT, WHAT VERSION OF THE PROGRAMME TO THEY NEED TO RETURN TO e.g DL 3.0]<br /><br />

<strong>First check in date</strong>: [INPUT AGREED CHECK-IN DATE(S). IF THE APPRENTICE IS BEING HANDED OVER TO THE APPRENTICE ENABLEMENT TEAM TO MANAGE THE BIL, INFORM THE APPRENTICE & LET THEM KNOW THEY WILL BE CONTACTED TO BOOK IN THEIR FIRST CHECK-IN].<br /><br />

<strong>Current projects / portfolio status</strong>: [INCLUDE NUMBER & QUALITY OF PROJECT/PORTFOLIO COMPLETION]<br /><br />

<strong>Current functional skills status</strong>: [COMPLETE/INCOMPLETE]<br /><br />

<strong>Current objectives or other goals</strong>: [ANY OTHER RELEVANT INFORMATION ABOUT GOALS/OBJECTIVES]<br /><br />`,

  "BIL Return Conversation": `<strong>Confirmed return module, cohort & coach</strong>: [INPUT RETURNING MODULE, COHORT & COACH]<br /><br />

<strong>Return programme version</strong>: [IF RELEVANT, WHAT VERSION OF THE PROGRAMME TO THEY NEED TO RETURN TO e.g DL 3.0]<br /><br />

<strong>Return meeting date</strong>: [CONFIRM DATE YOU WILL MARK ON DIS AND WHEN THE APPRENTICE WILL COMPLETE THEIR EOL, AS PER THE <a href="https://coda.io/d/_d0KEELljTCX#db-Articles_tu8yd/r157&view=modal">BIL GUIDANCE</a>. NOTE THIS SHOULD BE A COACH SURVEY OR RELEVANT OTJ LOG.]<br /><br />

<strong>First workshop date on return</strong>: [DATE OF FIRST LIVE WORKSHOP]<br /><br />

<strong>New delivery plan provided to apprentice and apprentice manager?</strong> [YES/NO]<br /><br />

<strong>Have you <a href="https://coda.io/form/Returning-Break-in-Learning-BIL-Apprentice-Form_dCQ3yjSAoNd">notified Launch</a> to request a cohort switch if required?</strong> [YES/NO]<br /><br />

<strong>APPRENTICESHIP PLANNING CONVERSATION</strong>: [INCLUDE DETAILS OF WHAT HAS BEEN CONFIRMED AS NEXT STEPS TO COMPLETE THE APPRENTICESHIP SUCCESSFULLY. SEE BELOW EXAMPLES OF BEST PRACTICE AREAS OF DISCUSSION].<br /><br />

<i>The following items are recommended best practise for discussing with an apprentice and their manager on return from a BIL. </i>

<ul>
  <li>Project/Portfolio Objective set</li>
  <li>Impact Objective set</li>
  <li>Functional Skills Status discussed and any next steps required set</li>
  <li>Confirm calendar invites for workshops provided to apprentice</li>
  <li>Discuss drop-in or office hours if running</li>
  <li>Highlight a suggested Community event</li>
  <li>OTJ Plan</li>
</ul>`,

  "Coach Recommended Non-Start": `<i>Use this section to provide details during the first 42-day period:</i><br /><br />

<strong>What is the reason for recommending Non-Start?</strong><br /><br />

[GIVE A BRIEF SUMMARY AS TO WHY YOU ARE RECOMMENDING A NON-START]<br /><br />

<strong>Actions taken:</strong><br /><br />

[INCLUDE A SUMMARY OF ALL ACTION ALREADY TAKEN TO SUPPORT THE LEARNER TO AVOID NON-START]<br /><br />`,

  "Community Coach (Tutor)": `<strong>Reason for Community Coach (Tutor) referral</strong>: [ADD IN REASON FOR REFERRAL]<br /><br />

<strong>Support Context</strong>: [ADD IN SUMMARY OF THE CHALLENGE INCLUDING WHAT YOU HAVE ALREADY TRIED AND WHAT YOU''RE HOPING TO ACHIEVE BY REFERRING THEM]<br /><br />

<strong>Requested support</strong>: [ADD IN A SPECIFIC ASK OF THE SUPPORT YOU WANT FROM THE TUTOR]<br /><br />

<i>Note: Completing this intervention log will not make the referral for you. Please ensure you also fill out the <a href="https://docs.google.com/forms/d/e/1FAIpQLSfnjlCjDyJROZPG9ooja2yqiVvHJqg266eSkd0yX_nEXwlWBw/viewform">Tutor Referral Form</a>. You can replicate the above notes within the form.</i>`,

  "CSM": `<strong>Reason for request</strong>: PLEASE DELETE AS NEEDED [BIL REQUEST/NON-START REQUEST/WITHDRAWAL REQUEST/PROVISIONAL BIL SUPPORT/OTHER APPRENTICE SUPPORT]<br /><br />

<strong>Requested support</strong>: [ADD IN SPECIFIC ASK OF THE SUPPORT YOU WANT TO HEAR FROM THE CLIENT]<br /><br />

<strong>Support context</strong>: [FOR A BIL OR WITHDRAWAL/NON-START REQUEST PLEASE COPY AND PASTE IN BIL OR WITHDRAWAL/NON-START REQUEST. IF AN APPRENTICE SUPPORT REQUEST INCLUDE EVERYTHING YOU HAVE ALREADY TRIED]<br /><br />

<strong>NB: Once you have requested support from a CSM, do not add additional intervention logs until the CSM has responded.</strong><br /><br />`,

  "Launch Meeting": `Learner's Motivation: [summary of the learner's motivation]

Manager's Motivation: [summary of the manager's motivation]

Responsibilities: [summary of the learner's role and job responsibilities]

Software used: [summary of the technical skills the learner has and tools they have access too]

Other notes: [optional]

Risk flags: [other key points that may impact the learner's ability to engage with the programme]

Impact Objective: [summary of business objective the learner is aiming to achieve by learning on the programme]`,

  "New BIL Conversation": `<i>Use this section to gather details and notes during a possible BIL discussion with an apprentice.</i>

<strong>What is the reason for the BIL discussion?</strong> [GIVE A BRIEF SUMMARY OF THE SITUATION THAT HAS LEAD YOU AND THE APPRENTICE TO DISCUSS A POSSIBLE BIL.]<br /><br />

<strong>Have you established that a break in learning is the most appropriate course of action to address the root cause of the issue and do they seem motivated to return after a break?</strong> [YES/NO. IF NO, WHAT FURTHER INFORMATION IS NEEDED? ARE THERE OTHER OPTIONS TO EXPLORE WITH THE APPRENTICE FIRST?] <br /><br />

<strong>Apprentice Manager Involvement</strong>: [INCLUDE DETAIL ABOUT THE AM ENGAGEMENT. IF THERE HAS BEEN NONE, HOW WILL YOU GET THEIR SIGN-OFF ON THE BIL AND CONFIRMED SUPPORT TO RETURN POST BIL. N.B ALL BIL REQUESTS SHOULD INVOLVE A MEETING WITH THE AM UNLESS CIRCUMSTANCES PREVENT IT e.g SIGNED OFF WORK FOR PHYSICAL HEALTH] <br /><br />

<strong>Approximate length of BIL discussed with apprentice</strong>: [E.G 1 MONTH. CONFIRM THIS IS IN LINE WITH BIL POLICY.]<br /><br />

<strong>Apprentice Progress</strong>: [BEFORE SUBMITTING A BIL REQUEST YOU SHOULD ENSURE YOU HAVE GOT UP TO DATE DATA & INFORMATION ON THEIR PORTFOLIO PROGRESS, FUNCTIONAL SKILLS AND ANY OTHER GOALS OR OBJECTIVES. YOU WILL NEED THIS FOR THE BIL REQUEST SUBMISSION. MAKE NOTES HERE.]<br /><br />

<strong>Support during and after a BIL</strong>: [NOTE DOWN WHAT SUPPORT THE APPRENTICE MAY WANT OR NEED DURING A BIL. PROPOSE CHECK-INS IN LINE WITH THE BIL POLICY. CONFIRM YOU HAVE WALKED THE APPRENTICE THROUGH WHAT WOULD HAPPEN WHEN THEY RETURN AND WHAT WOULD BE REQUIRED OF THEM].<br /><br />

<strong>Actions taken</strong>: [WHEN SUBMITTING A BIL REQUEST, YOU WILL NEED TO SUMMARISE ALL ACTIONS TAKEN TO SUPPORT THE APPRENTICE THAT MAY AVOID A BIL. CONSIDER IF ALL OPTIONS HAVE BEEN EXPLORED AND DISCUSS WITH YOUR PL IF NEEDED].<br /><br />

<strong>Next steps</strong>: [IF ANY OF THE ABOVE INFORMATION IS INCOMPLETE, OR THERE ARE FURTHER OPTIONS TO EXPLORE TO AVOID A BIL, MAKE A NOTE OF WHAT NEXT STEPS YOU NEED TO TAKE].<br /><br />

<i>Note: A BIL can only be used where there is a qualifying reason and should not be used to 'buy time' for an apprentice to decide whether or not they want to withdraw.</i>`,

  "Programme Lead": `<strong>Reason for PL support request</strong>: [ADD IN REASON FOR PL SUPPORT REQUEST]<br /><br />

<strong>Support Context</strong>: [ADD IN SUMMARY OF THE CHALLENGE INCLUDING WHAT YOU HAVE ALREADY TRIED]<br /><br />

<strong>Requested support</strong>: [ADD IN A SPECIFIC ASK OF THE SUPPORT YOU WANT FROM YOUR PL]<br /><br />

<i>Note: You will need to raise this in your next 1-2-1. Feel free to copy and paste the text from this box or share screen to discuss. Completing this intervention log won't surface anything to your Programme Lead.</i>`,

  "Recommend Continue": `<i>Use this section to provide details during the first 42-day period:</i><br /><br />

<strong>What is the reason for recommending continue?</strong><br /><br />

[GIVE A BRIEF SUMMARY AS TO WHY YOU AND THE LEARNER ARE HAPPY TO PROGRESS]<br /><br />

<strong>Actions taken:</strong><br /><br />

[INCLUDE A SUMMARY OF ALL ACTION ALREADY TAKEN TO SUPPORT THE LEARNER TO AVOID NON-START]<br /><br />`,

  "Self-Selected Non-Start": `<i>Use this section to provide details during the first 42-day period:</i><br /><br />

<strong>What is the reason for the learner wanting to Non-Start?</strong><br /><br />

[GIVE A BRIEF SUMMARY AS TO WHY THE LEARNER HAS RECOMMENDED A NON-START]<br /><br />

<strong>Actions taken:</strong><br /><br />

[INCLUDE A SUMMARY OF ALL ACTION ALREADY TAKEN TO SUPPORT THE LEARNER TO AVOID NON-START]<br /><br />`,

  "Withdrawal Conversation": `<i>Use this section to gather details and notes during a possible Withdrawal conversation with an apprentice.</i>

<strong>What is the reason for the Withdrawal discussion?</strong> [GIVE A BRIEF SUMMARY OF THE SITUATION THAT HAS LEAD YOU AND THE APPRENTICE TO DISCUSS A POSSIBLE WITHDRAWAL]<br /><br />

<strong>Have you established that a Withdrawal is the most appropriate course of action?</strong> [YES/NO. IF NO, WHAT FURTHER INFORMATION IS NEEDED? ARE THERE OTHER OPTIONS TO EXPLORE WITH THE APPRENTICE FIRST?] <br /><br />

<strong>Apprentice Manager Involvement</strong>: [INCLUDE DETAIL ABOUT THE AM ENGAGEMENT. IF THERE HAS BEEN NONE, HOW WILL YOU GET THEIR SIGN-OFF ON THE WITHDRAWAL AND CONFIRMED SUPPORT OF THE WITHDRAWAL N.B ALL WITHDRAWAL REQUESTS SHOULD INVOLVE A MEETING WITH THE AM UNLESS CIRCUMSTANCES PREVENT IT e.g LEFT THE BUSINESS SUDDENLY.] <br /><br />

<strong>Actions taken</strong>: [INCLUDE ALL ACTION ALREADY TAKEN TO SUPPORT THE APPRENTICE THAT MAY AVOID A WITHDRAWAL]<br /><br />

<strong>Live discussion</strong>: [YES/NO - NOTE: WITHDRAWAL REQUESTS WILL NOT BE APPROVED WITHOUT A CALL WITH THE APPRENTICE AND IDEALLY THE AM. FOR SCENARIOS WHERE THIS DOES NOT SEEM TO BE POSSIBLE PLEASE SPEAK TO YOUR PL].<br /><br />

<strong>Next steps</strong>: [WHAT WILL YOU DO NEXT TO TRY AND PREVENT THE WITHDRAWAL OR VALIDATE IF IT IS THE BEST OPTION FOR THE APPRENTICE?]<br /><br />`,

  "Withdrawal Request Submitted": `<strong>Reason for the Withdrawal under the Multiverse Withdrawal Policy</strong>: [ENTER TOP-LEVEL REASON e.g ROLE FIT]<br /><br />

<strong>Rationale</strong>: [CONFIRM WHY YOU THINK THIS IS BEST NEXT STEP FOR THE APPRENTICE AND/OR WHY THERE ARE NO FURTHER OPTIONS TO MITIGATE THE WITHDRAWAL]<br /><br />

<strong>Actions taken</strong>: [INCLUDE ALL ACTION ALREADY TAKEN TO SUPPORT THE APPRENTICE TO MITIGATE THE WITHDRAWAL. INCLUDE DETAILS OF AM INVOLVEMENT]<br /><br />`
};

// Read what's selected in the first multiselect
const raw = interventionActionsMultiselect4.value;

// Normalize values to an array of strings
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

// Return objects for mapped dropdown
return uniqueTypes.map(type => ({
  label: type,
  value: type,
  templateHtml: templatesByType[type] || null,
  templateText: formatTemplateForTextbox(templatesByType[type] || null),
}));