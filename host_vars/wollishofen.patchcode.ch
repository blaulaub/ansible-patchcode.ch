---
this_host_label: wollishofen_patchcode_ch

this_host_users:
  - cfuchs

nfs_exports:

  - heading: "Machines that run KVM and need access to QCOW images"
    paths:
      - path: /share/qcow
        rw_clients:
          - white-dwarf.patchcode.ch
          - LoungePC.patchcode.ch
        ro_clients:
          - litserv.patchcode.ch

  - heading: "the diskless-debian-LoungePC, plus the backup machine"
    paths:
      - path: /share/lounge-root-debian
        rw_clients:
          - LoungePC.patchcode.ch
        ro_clients:
          - litserv.patchcode.ch

  - heading: "media is shared through samba, only the backup machine needs access"
    paths:
      - path: /share/movies
        rw_clients: []
        ro_clients:
            - litserv.patchcode.ch
      - path: /share/music
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/fotos
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/pdf
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/docuScans
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/Public
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/repositories
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch

  - heading: "other stuff"
    paths:
      - path: /share/old
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch

  - heading: "service and machine shares"
    paths:

      - path: /share/aptcache
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch

      - path: /share/vm-dovecot
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/vm-dovecot/var
        rw_clients:
          - dovecot.patchcode.ch
        ro_clients: []

      - path: /share/vm-influx
        rw_clients: []
        ro_clients:
          - litserv.patchcode.ch
      - path: /share/vm-influx/home
        rw_clients:
          - influx.patchcode.ch
        ro_clients: []
      - path: /share/vm-influx/var
        rw_clients:
          - influx.patchcode.ch
        ro_clients: []

      - path: /share/freenet
        rw_clients:
          - freenet.patchcode.ch
        ro_clients: []

      - path: /share/mysql_var_lib_mysql
        rw_clients:
          - mysql.patchcode.ch
        ro_clients:
          - litserv.patchcode.ch

  - heading: "user shares"
    paths:

      - path: /share/cfuchs
        rw_clients:
          - LoungePC.patchcode.ch
        ro_clients:
          - litserv.patchcode.ch

      - path: /share/diana
        rw_clients:
          - LoungePC.patchcode.ch
        ro_clients:
          - litserv.patchcode.ch

      - path: /share/lea
        rw_clients:
          - LoungePC.patchcode.ch
        ro_clients:
          - litserv.patchcode.ch

...
