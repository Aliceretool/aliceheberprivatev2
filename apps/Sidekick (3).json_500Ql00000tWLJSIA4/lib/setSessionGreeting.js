const name = current_user.firstName || 'friend';
const isMorning = new Date().getHours() < 12;

const greetings = [
  `Hey ${name}! Here's your daily coaching digest! ☕`,
  ...(isMorning ? [
    `Morning ${name}! Coffee in hand? Let's do this. ☕️🔥`,
    `Morning ${name}! Time to be the coach you wish you had. 🌟`,
    `Morning ${name}! Your apprentices are lucky to have you. Let's go! ✨`,
    `Morning ${name}! First coffee, then coaching greatness. ☕️👟`,
    `Morning ${name}! Let's set the bar high today. 🚀`
  ] : []),
  `Hey ${name}! Another day to be an absolute coaching legend. 🎯`,
  `Hey ${name}! Here's the latest on your squad of superstars. 📋`,
  `${name}, your squad is looking sharp. Let's check the stats. 📈`,
  `Hey ${name}! Ready to help your superstars shine today? ✨`,
  `Back at it, ${name}! Time to build some legends. 🛠️`,
  `Hey ${name}! Here’s the pulse on your apprentice army. ⚡️`,
  `Looking good, ${name}! Let's make some moves. 💥`
];

const finalChoice = greetings[Math.floor(Math.random() * greetings.length)];

// This saves the choice to your state so it never flickers during the session
sessionGreeting.setValue(finalChoice);