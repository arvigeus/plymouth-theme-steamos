# SteamOS Plymouth theme

![preview](./preview.apng)

## How to get this theme?

```bash
git clone https://github.com/arvigeus/plymouth-theme-steamos
```

## How to use this theme?

1. Open a terminal inside the cloned repo.

1. Copy the selected theme in plymouth theme dir

    ```sh
    sudo cp -r . /usr/share/plymouth/themes/steamos
    ````

1. For general linux distributions (Arch, Fedora, etc):

    ```bash
    # check if theme exist in dir
    sudo plymouth-set-default-theme -l

    # now set the theme and rebuilt the initrd
    sudo plymouth-set-default-theme -R steamos
    ````

1. For Debian (Ubuntu, Kubuntu) based distros

    ```bash
    # install the new theme
    sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/steamos/steamos.plymouth 100

    # select the theme to apply
    sudo update-alternatives --config default.plymouth
    #(select the number for installed theme)

    # update initramfs
    sudo update-initramfs -u
    ```
