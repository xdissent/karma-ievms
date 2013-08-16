karma-ievms
===========

[Karma](http://karma-runner.github.io) launcher for 
[ievms](http://xdissent.github.io/ievms) virtual machines.

[![NPM version](https://badge.fury.io/js/karma-ievms.png)](http://badge.fury.io/js/karma-ievms)

This Karma plugin adds browser launchers for ievms virtual machines. This
allows for testing across multiple versions of Internet Explorer simultaneously.


Requirements
------------

You must have installed whichever IE virtual machines you wish to use with 
[ievms](http://xdissent.github.io/ievms) or 
[iectrl](http://xdissent.github.io/iectrl).


Installation
------------

Install the plugin from npm:

```sh
$ npm install karma-ievms --save-dev
```

Or from Github:

```sh
$ npm install 'git+https://github.com/xdissent/karma-ievms.git' --save-dev
```

Install the ievms virtual machines on which you wish to test. See the 
[ievms homepage](http://xdissent.github.io/ievms) or 
[iectrl](http://xdissent.github.io/iectrl) for further instructions.

Add ievms virtual machine names to the `browsers` key in your Karma 
configuration:

```coffee
module.exports = (config) ->
  config.set

    # Start these browsers:
    browsers = [
      'IE8 - WinXP'
      'IE9 - Win7'
      'IE10 - Win7'
    ]

    # ...
```


Usage
-----

Just run your tests!

```sh
$ karma start
INFO [karma]: Karma v0.9.3 server started at http://localhost:9876/
INFO [launcher]: Starting browser IE8 - WinXP
INFO [launcher]: Starting browser IE9 - Win7
INFO [launcher]: Starting browser IE10 - Win7
INFO [IE 10.0.0 (Windows 7)]: Connected on socket id QMtH-ssLaEC-4Ad-HQcx
INFO [IE 8.0.0 (Windows XP)]: Connected on socket id 7cU0uMkf_0LKybq0HQcy
INFO [IE 9.0.0 (Windows 7)]: Connected on socket id Qva0anolj13o15hqHQcz
IE 10.0.0 (Windows 7): Executed 1 of 1 SUCCESS (0.155 secs / 0.022 secs)
IE 8.0.0 (Windows XP): Executed 1 of 1 SUCCESS (0.219 secs / 0.063 secs)
IE 9.0.0 (Windows 7): Executed 1 of 1 SUCCESS (0.369 secs / 0.028 secs)
TOTAL: 3 SUCCESS
```

If you'd like to see the debug output from ievms/iectrl, set the `DEBUG` 
environment variable to `iectrl:*`:

```sh
$ export DEBUG='iectrl:*' # for bash
```

```sh
$ set -x DEBUG 'iectrl:*' # for fish
```
