var ip = fetch('https://api.ipify.org/?format=json')
  .then(response => response.json())
// Returns 
return ip