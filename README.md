# ![](https://raw.githubusercontent.com/hoobs-org/HOOBS/master/docs/logo.png)

Asynchronous PAM authentication for NodeJS

It tries to superseed the previous and outdated node-pam extension with the following improvements:
* Allows to provide own service name, for example common-auth or any custom service name defined in `/etc/pam.d`
* Allows to provide PAM_RHOST via 'remoteHost' option. It is used to provide remote network authentication that will skip any local only authentication methods like for example fingerprint reading.
* Already mentioned utilization of libuv and node-gyp
* Proper type checking in C++ code, it throws exception if bad types are given
* In case of error it passes the error string containing both pam function and `pam_strerror()` results

## Usage

Simple usage
------------
Default service_name for `pam_start(2)` is 'login'.

```js
var pam = require("@hoobs/pam");

pam.authenticate("username", "password", (error) => {
    if (error) {
        console.log(error);
    } else {
        console.log("authenticated");
    }
});
```

## Options
Proper apps should provide their own service name. Sample services are located in `/etc/pam.d`. As an example lookup a service name file for `sshd`. To do proper network authentication you should also provide `remoteHost` key to the options argument. It will be passed to pam as `PAM_RHOST` (`pam_set_item(2)`).

```js
var pam = require("@hoobs/pam");

pam.authenticate("username", "password", (error) => {
    if (error) {
        console.log(errpr);
    } else {
        console.log("Authenticated!");
    }
}, {
    serviceName: "myapp",
    remoteHost: "localhost",
});
```

## Installation
First you will need to install PAM libraries.

```
sudo apt install libpam-dev
```

Then you can install this module into your project.
```
yarn add @hoobs/pam
```

## Credits
This is a modified project orginally wrote by [Damian Kaczmarek](https://github.com/Rush).
