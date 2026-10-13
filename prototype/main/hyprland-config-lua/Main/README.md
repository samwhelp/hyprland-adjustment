

# Hyprland Config

* [Notice](#notice)
* [Config File Path](#config-file-path)
* [Docs](#docs)
* [Usage](#usage)
* [Source](#source)




## Notice

> Starting with version `v0.55`, Hyprland offers native support for writing configuration files in `Lua`, meaning `hyprland.lua` replaces the old `hyprland.conf`. Support for the legacy syntax is expected to be completely phased out within one or two releases following v0.55.




## Config File Path

* [hyprland](#hyprland)




### hyprland

| Config File Path |
| --- |
| [~/.config/hypr/hyprland.lua](./asset/overlay/etc/skel/.config/hypr/hyprland.lua) |
| [~/.config/hypr/hyprpaper.conf](./asset/overlay/etc/skel/.config/hypr/hyprpaper.conf) |




## Docs

* [Master Layout](https://wiki.hyprland.org/Configuring/Master-Layout/)




## Usage


### install

run

``` sh
./install.sh
```

or run

``` sh
make install
```


### package-install

run

``` sh
./package-install.sh
```

or run

``` sh
make package-install
```


### asset-install

run

``` sh
./asset-install.sh
```

or run

``` sh
make asset-install
```


### config-install

run

``` sh
./config-install.sh
```

or run

``` sh
make config-install
```




## Source

* https://github.com/hyprwm/Hyprland/blob/main/example/hyprland.lua
* https://raw.githubusercontent.com/hyprwm/Hyprland/refs/heads/main/example/hyprland.lua
