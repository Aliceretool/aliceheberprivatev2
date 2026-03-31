const jobTitle = {{current_user.metadata?.userInfoResponse?.job_title}};

// Coach patterns
const coachPatterns = ['coach', 'cohort coach', 'launch coach'];

// CSM/DM patterns
const csmDmPatterns = [
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
const isCsmDm = csmDmPatterns.some((pattern) => jobTitle.toLowerCase().includes(pattern));

// Return role category - defaults to 'csm_dm' since job_title is not available
return isCoach ? 'coach' : isCsmDm ? 'csm_dm' : 'csm_dm';