# pe_server_setup

This module provides a bolt project to set up PE server and puppet agent machines. It allows you to execute bolt tasks to set up PE server and Puppet agent machines. Pre-configured pe.conf file helps to lessen manual work as much as possible.

### Usage:

#### Step 1: Copy a config file to the remote machine.
To copy pe conf file, you need to execute the following command
##### bolt task run pe_server_setup::copy_config_file --targets localhost

#### Step 2: Install PE server to the remote machine.

##### bolt task run pe_server_setup::install_pe_server --targets 10.234.3.131 -u centos --run-as root --no-host-key-check

#### Step 3: Install Puppet agent to the remote machine (linux nodes).

##### bolt task run pe_server_setup::install_agent_nix --targets 10.234.3.123,10.234.3.74,10.234.3.146 -u centos --run-as root --no-host-key-check

#### Step 4: Install Puppet agent to the remote machine (windows nodes).

##### bolt task run pe_server_setup::install_agent_win --targets winrm://10.234.3.58,winrm://10.234.3.246 --user Administrator --no-ssl --password-prompt

