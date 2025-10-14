const url = 'https://aliceheber-demo-s3.s3.eu-west-2.amazonaws.com/Proj2-Attachment_+File+3.pptx'; // must be public
const response = await fetch(url);
const arrBuf = await response.arrayBuffer();
const bytes = new Uint8Array(arrBuf);
let binary = '';
for (let i = 0; i < bytes.length; i++) binary += String.fromCharCode(bytes[i]);
return btoa(binary);