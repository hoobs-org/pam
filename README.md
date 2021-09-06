# ![](https://raw.githubusercontent.com/hoobs-org/HOOBS/master/docs/logo.png)

Asynchronous PAM authentication for NodeJS

## Usage

Default serviceName for is 'login'.

```ts
import pam from "@hoobs/pam";

pam.authenticate("username", "password", (error) => {
    if (error) {
        console.log(error);
    } else {
        console.log("authenticated");
    }
});
```

## Options
Proper apps should provide their own service name. Sample services are located in `/etc/pam.d`. As an example lookup a service name file for `sshd`. To do proper network authentication you should also provide `remoteHost` key to the options argument. It will be passed to pam as `PAM_RHOST`.

```ts
import pam from "@hoobs/pam";

pam.authenticate("<username>", "<password>", (error) => {
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
npm install @hoobs/pam
```

## Legal
This is a modified project orginally wrote by [Damian Kaczmarek](https://github.com/Rush).

HOOBS and the HOOBS logo are registered trademarks of HOOBS Inc. Copyright (C) 2020 HOOBS Inc. All rights reserved.
