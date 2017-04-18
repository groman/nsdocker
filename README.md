# nsdocker

This is an experiment in trying to namespace dockerd away from the host so that the
outputs of 'mount' and 'ifconfig' stay sane and readable to mere humans.

It also achieves an additional goal of making port publishing slightly more manual
and cumbersome, which is either a good or a bad thing depending on how you look at
it

## nsdocker is not (currently) a security layer

This is an important note. The namespaces are trivially escapable and are just meant
to tidy up the host

## TODO: Convert nsdocker.service to a unit file + scripts

After writing this I realize the opera I wrote in the service file does not really
belong there. Pre/Post should probably be scripts and config files instead.
