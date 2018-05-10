
# By commandline (do only as root to hide passwords)

    curlftpfs <user>:<pw>@<ftp-server>  ~tschneck/git-files/vgf/vgf-ftp-mount -o allow_other,disable_eprt,tlsv1 -o uid=1000 -o gid=1000

# Config mount options in `/etc/fstab`

    curlftpfs#<user>:<pw>@<ftp-server>  /home/tschneck/git-files/vgf/vgf-ftp-mount fuse rw,noauto,default_permissions,users,uid=1000,gid=1000,umask=0,allow_other,_netdev,tlsv1 0 0

## then mount through

    mount /home/tschneck/git-files/vgf/vgf-ftp-mount

# Unmount via

    fusermount -u /home/tschneck/git-files/vgf/vgf-ftp-mount


# Sync content via `rsync`

    rsync --dry-run -avz --delete-after --exclude=backup/* --exclude=cache/* --exclude=log*/ . /home/tschneck/git-files/vgf/vgf-grav/grav-admin/    

 **NOTE:** remove `dry-run` to really copy