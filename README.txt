################################################################################
#                                                                              #
#   Redundancy sync scripts for Maria Åkerberg                                 #
#                                                                              #
################################################################################

This suite of scripts provide functionality to sync:
    1. odoo.conf
    2. Odoo filestore
    3. Manually installed apt-packages
    4. Non-core odoo projects
    5. TODO: Sync pip-installed Python modules (possible conflict with apt)
from a source machine to current one. Postgres DB-sync is outside the scope of
these scripts.

There are some utilites too:
    * Enable/Disable sync.
    * Disable standby mode (this disable postgres consumption of WAL files but not source's archiving of them)
    * Test connection to source machine.
    * Simple timestamp of last successful runs of the file syncs.


Usage
=====

To be written

Build instructions
==================

Disable safety measures as described under notes

Run:
    make
or:
    dpkg-deb --build --root-owner-group ma_redundancy deb

This is a set of bash-scripts.

Notes & caveats
===============

This deals with packages, Odoo modules and files only. Postgres replication is
beyond the scope of this script.

There are currently safety measures in place in some scripts to prevent them
from messing up a system unintentionally:
    1. ma-disable-standby-mode line marked 'Safety exit' should be removed
    2. ma-apt-sync activate apt install line

The suite has been reasonably tested and does what it says on the tin with the
safety rows edited appropriatly. It's still unpolished though.
