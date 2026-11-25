# Ladybird Browser for Docker

This repository contains files for packaging Ladybird Browser Alpha ([ladybirdbrowser/ladybird](https://github.com/ladybirdbrowser/ladybird)) into a Docker container using LinuxServer.io's base system.

## Process

The Dockerfile pulls Ladybird's repository information and installs using apt (which is why the Ubuntu Resolute version of the LSIO base system is used). All features in the published Ladybird Alpha are retained, including the feedback system. If you see problems that seem like they come from Ladybird, use the feedback button in Ladybird rather than complaining to me or LSIO.

## Credits

- The scaffolding files (Dockerfile, files under root/defaults) are based on the work of LinuxServer.io (LSIO) published in their documentation: https://docs.linuxserver.io/selkies/developer-guide/building-images/.
- Because the work here is based on LSIO's work, this repository is licensed under the GNU GPL 3.0 following the conventions of LSIO's repositories including [linuxserver/docker-baseimage-selkies](https://github.com/linuxserver/docker-baseimage-selkies).
- Ladybird Browser uses a BSD 2 Clause license. This Docker container packages Ladybird's official binaries from their official Debian/Ubuntu repository.