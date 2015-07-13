# relay-syslog-ng-cookbook

Creates a syslog-ng box for relaying log messages to loggly and logentries

## Supported Platforms

 * Ubuntu 14.04

## Attributes


## Usage

### Test-kitchen Environment
Perform a kitchen converge on default-ubuntu and then a converge on sender-ubuntu.

Log in to sender-ubuntu and use the command:

 logger 'testing log'

It should go to the default-ubuntu box with syslog-ng.  There is a local log file there
called /var/log/all_network_hosts.log .  You can see a local copy of the message there.
Next, log in to loggly and logentries to see if it worked.

### relay-syslog-ng::default

Include `relay-syslog-ng` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[relay-syslog-ng::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Daniel Klopp(<dklopp@infoblox.com>)
