const currentUrl = new URL(url.href);
const hostname = currentUrl.hostname; // retool-<instance>.eashared
const instance = hostname.split(".")[0].split("-")[1]; // dev or uat

const GENESYS_REDIRECT_URL = `https://retool-${instance}.eashared.net/app/genesys-callback`

const genesysLoginUrl = `https://login.mypurecloud.de/oauth/authorize
?client_id=${GENESYS_CLIENT_ID.value}
&response_type=token
&redirect_uri=${GENESYS_REDIRECT_URL}`;

const skipLoginUrl = !!url.searchParams.skipLoginUrl;

if (!skipLoginUrl) {
  utils.openUrl(genesysLoginUrl);
}
