// my-first-snowpack/hello-world.js
export async function authenticate(common) {
    common.authenticate ? 
        console.log("Authenticating",common.authenticate) :
        console.log("Failed to find common.authenticate",common);
  }
  
  export function helloWorld() {
    console.log('Hello World!');
  }