import {authenticate} from './core.js';

// my-first-snowpack/index.js
import {helloWorld} from './core.js';

helloWorld();

authenticate({"key":"This should fail to authenticate with no valid parameters provided within common thought."});
authenticate({"authenticate":"This should pass first step to authenticate"});
authenticate({"authenticate":{"private_key":"This should pass as well"}});
