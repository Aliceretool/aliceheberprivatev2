// If you are using a JS Transformer or a JS Query to process the AI response:
const rawAiOutput = {{AI_call.data}};

// This removes ```json, ```, and any extra whitespace
const cleanString = rawAiOutput.replace(/```json\n?|```/g, '').trim();

// Now it is perfectly safe to parse into a real JSON object
const finalData = JSON.parse(cleanString);

return finalData;