# Example x2go server using Vagrant and Puppet

## What?

[X2go](http://wiki.x2go.org/doku.php) "*X2Go enables you to access a graphical desktop of a computer over a low bandwidth (or high bandwidth) connection*".

Here we automagically create and configure a virtual machine that provides an X2go server.

## Usage?

1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads), a virtual machine *hypervisor*.
1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html), a tool for automating the process of creating virtual machines.
1. Download and install [Puppet](https://puppet.com/download-open-source-puppet) (version 4.x), a tool for automatically configuring machines so they match a specification in a set of text files.
1. Download and install the [X2go client](http://wiki.x2go.org/doku.php/download:start#the_client-side_of_x2go) (available for Windows, Linux and OS X)
1. From within a local clone of this repository run `vagrant up`
    * This step 
        * downloads a Centos 7 virtual machine image
        * starts up an instance of this
        * configures it using Puppet
    * The downloading of the image and the Puppet configuration might take 15 mins or so.
1. Start the x2go client and tell it to connect:
    * to the machine `localhost`
    * to the port `2222`
    * as the user `vagrant`
    * using RSA/DSA key `.vagrant/machines/default/virtualbox/private_key` (within your home directory)
1. You should then see a desktop on the virtual machine!
