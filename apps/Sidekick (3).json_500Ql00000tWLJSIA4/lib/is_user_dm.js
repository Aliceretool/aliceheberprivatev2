/*
## Plain English Explanation

This code figures out what **role category** a logged-in user belongs to, based on their job title.

---

### Step by Step:

1. **Get the user's job title**
   It pulls the job title from the currently logged-in user's profile information.

2. **Define two lists of job title keywords:**
   - **Coach patterns** – words/phrases that indicate a coaching role (e.g. "coach", "launch coach")
   - **CSM/DM patterns** – words/phrases that indicate a customer success or delivery role (e.g. "csm", "delivery manager")

3. **Check if the user is a Coach**
   It looks through the coach list and checks if the user's job title **contains any of those words**. The check is case-insensitive (so "Coach" and "coach" both match).

4. **Check if the user is a CSM/DM**
   Same process, but checking against the CSM/DM list.

5. **Return a role category:**
   - If they match the coach list → return `'coach'`
   - Otherwise → return `'csm_dm'`

---
*/
const jobTitle = {{current_user.metadata?.userInfoResponse?.job_title}};

// Coach patterns
const coachPatterns = ['coach', 'cohort coach', 'launch coach'];

// CSM/DM patterns
const DmPatterns = [
  'customer success manager', 
  'csm', 
  'enterprise account manager', 
  'enterprise customer success manager', // Fixed spelling of "success"
  'delivery manager', 
  'delivery lead', 
  'dm'
];

// Check if job title matches coach patterns
const isCoach = coachPatterns.some((pattern) => jobTitle.toLowerCase().includes(pattern));

// Check if job title matches CSM/DM patterns
const isDm = DmPatterns.some((pattern) => jobTitle.toLowerCase().includes(pattern));

// Return role category - defaults to 'csm_dm' since job_title is not available
return isCoach ? 'coach' : isDm ? 'dm' : 'dm';