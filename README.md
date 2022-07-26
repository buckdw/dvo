# DVO - data validation option

## Authors
Kiran Harpude
Kasper Siliakus
Diederick de Buck

## Compatibility
Suitable for both GRFDv1 and GRFDv2 DVO environments

## Requirements
Requires Python3.6 or higher

## Structure (general)
DVO playbook consists of 4 plays
Plays are cascading plays, which means: Play N only plays if Play N-1 was succesfull
Cascading option is guaranteed by the pre_tasks of Play N

Play on TAS is a play on localhost
Play on PWRCNTR (or other node) is a play on a managed (remote) host

## Structure (DVO)
play 1:TAS - Determines deployment artifacts for both DVML and scripts
play 2:TAS - Deploy DVML artificats via DVOcmd
play 3:PWRCNTR - Deploy script artificats
play 4:TAS - Update AzDo (GIT) repo pointers after succesfull deploy (PRODDEPLOYED)

## Execution environment
Playbook runs on TAS
Playbook runs under VSTS user
inventory file contains hosts and ssh-keys of managed nodes (PWRCNTR)

### Dependencies
In plays on TAS, we can use both standard ANSIBLE modules and GRFD developed modules
In plays on remote host, it is prohibited to use GRFD developed modules, because they require additional Python modules. For sake of easy management, we prohibit use of GRFD modules.

### Initial run
DVO play supports initial run facility --> describe how!

### Pipeline arguments
All DVO parameters are provided by the DVO environment_lookup module. However, user-id and passwords
can only come from approved security stores. Therefore you will get prompts if you run the play interactively and you have to provide pipeline arguments if you run from Azure

#### List of mandatory pipeline arguments
bla
bla 
bla