## SSHelper

- Install [SSHelper](https://arachnoid.com/android/SSHelper/) or [08.30.2018 Version 11.9](https://arachnoid.com/android/SSHelper/APK_release_archive/119.apk)
- mount Android device via sshfs
  ```
  $ printf "admin\n" | sshfs root@192.168.0.101:/ ~/mnt -o port=2222,password_stdin
  ```
- use rsync to backup all files
  ```
  $ rsync -avH --progress ~/mnt/storage/extSdCard/DCIM .
  ```
- passwordless login
```
$ ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''
$ ssh-copy-id -i ~/.ssh/id_rsa.pub -p 2222 192.168.0.101
```
- systemd automount
```
$ sudo vim /etc/fstab
lyshie@192.168.0.101:/    /misc/j7    fuse.sshfs    noauto,x-systemd.automount,_netdev,users,allow_other,reconnect,port=2222,IdentityFile=/home/lyshie/.ssh/id_rsa,uid=lyshie,gid=lyshie 0 0
$ sudo systemctl daemon-reload
$ ls /misc/j7
```

ref: 

https://gist.github.com/lyshie/11420e13e7036e5c812a4358b1f93717#file-backupandroid-md