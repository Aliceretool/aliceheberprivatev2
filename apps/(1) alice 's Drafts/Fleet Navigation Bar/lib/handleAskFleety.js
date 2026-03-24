await new Promise((resolve, reject) => {
  queryVectorDB.trigger({
    onFailure: (err) => reject(err),
    onSuccess: () => {
      chatGPTPrompt.trigger({
        onFailure: (err) => reject(err),
        onSuccess: () => {
          resolve();
          logFleetyPrompt.trigger();
        },
      });
    },
  });
});
