# bloodhound dc404

## requirements

- [vagrant for windows](https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_windows_amd64.msi)  
- [virtualbox for windows](https://download.virtualbox.org/virtualbox/7.0.14/VirtualBox-7.0.14-161095-Win.exe)  

### initial setup

* Windows users setup your gitconfig to [play nicely](https://stackoverflow.com/questions/5834014/lf-will-be-replaced-by-crlf-in-git-what-is-that-and-is-it-important) with programmers who dont use windoze.
`git config --global core.autocrlf true`

* run `vagrant up`
```
PS C:\Users\Owner\code\bloodhound> vagrant up --provision
Bringing machine 'bloodhound' up with 'virtualbox' provider...
==> bloodhound: Importing base box 'kalilinux/rolling'...
```

* run `vagrant ssh`  

* run `vagrant ssh -C hostname -I` 
  this will grab you the IP of the bridged network.
