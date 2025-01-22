# Configuración de i3wm

Configuración perzonalizada de i3wm para laptop (Thinkpad 😊).

Para poder ejecutar los archivos con permisos de administrador hay que utilizar el siguiente comando en la termnial

```bash
sudo chmod +x nombre_de_archivo
```

y colocar la contrseña de usuario.

**Ejemplo**

```bash
sudo chmod +x ~/.config/scripts/adjust_brightness.sh
```

## ⚡️ Requerimientos

* polybar
* feh
* wezterm
* net-tools
* brightnessctl
* thunar
* yad
* rofi
* copyq
* pamixer
* maim
* xclip
* xdotool
* Nerd Font: **UbuntuMono Nerd Font**. Se puede encontrar [aquí](https://www.nerdfonts.com/font-downloads). Una forma rápida de encontrarla es buscar `ubuntu` con `ctrl+f` en la página web.

## 📦 Instalación

Es buena práctica actualizar el sistema

```bash
sudo apt update
```
y tener la última versión de los paquetes

```bash
sudo apt upgrade
```

Luego hay que instalar i3wm mediante el siguiente comando

```bash
sudo apt install i3
```

Para realizar una instalación del resto de paquetes de manera sencilla hay que utilizar este comando

```bash
sudo apt install polybar feh net-tools brightnessctl thunar yad rofi maim xclip xdotool copyq
```
Las **Nerd Font** se instalan a parte.

Para realizar la instalación de wezterm en un respectivo OS, se puede encontrar información [aquí](https://wezfurlong.org/wezterm/install/linux.html).

## ⚙️ Configuración

La configuración se encuentra generalmente en el directorio `home/.config/`.

Información sobre como extender las características de polybar puede ser encontrada en [polybar-scripts](https://github.com/polybar/polybar-scripts).

Para asignar el valor adecuado al campo `interface` del módulo `wireless-network` hay que utilizar el comando

```bash
route
```

en la terminal y  colocar el valor de `Use Iface`.
