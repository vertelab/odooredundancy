################################################################################
#                                                                              #
#   Redundancy sync scripts for an Odoo installation as applicable at Vertel   #
#                                                                              #
################################################################################

This suite of scripts provide functionality to sync:
    1. odoo.conf
    2. Odoo filestore
    3. Manually installed apt-packages
    4. Non-core odoo projects
    5. Sync pip-installed Python modules (possible conflict with apt)
from a source machine to current one. Postgres DB-sync is outside the scope of
these scripts.

There are some utilites too:
    * Enable/Disable sync.
    * Disable standby mode (this disable postgres consumption of WAL files but not source's archiving of them)
    * Test connection to source machine.
    * Simple timestamp of last successful runs of the file syncs.


Usage
=====

To be written - See recovery document

Build instructions
==================

Run:
    make
or build it :
    dpkg-deb --build --root-owner-group ot_redundancy deb


Notes & caveats
===============

This deals with apt packages, pip Python modules, Odoo modules and files only.
Postgres replication is beyond the scope of this script.

The suite has been reasonably tested and does what it says on the tin with the
safety rows edited appropriately. Should be considered to be in beta status.
