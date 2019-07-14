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
        ro_clients: []

  - heading: "the diskless-debian-LoungePC, plus the backup machine"
    paths:
      - path: /share/lounge-root-debian
        rw_clients:
          - LoungePC.patchcode.ch
        ro_clients: []

  - heading: "service and machine shares"
    paths:

      - path: /share/freenet
        rw_clients:
          - freenet.patchcode.ch
        ro_clients: []

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
