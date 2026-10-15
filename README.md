# Hyprland Dotfiles

Configuración personal de Hyprland en Lua para Fedora Linux.

Este repositorio contiene mi configuración base del compositor, mis atajos
personales y un shader personalizado para aumentar la saturación de los colores.

El objetivo es mantener la configuración de Hyprland separada del shell
gráfico. No incluye la configuración de DMS, Quickshell ni de otros shells.

## Contenido

- `.config/hypr/hyprland.lua`: configuración general, animaciones y reglas de ventanas.
- `.config/hypr/keybinds.lua`: atajos personales.
- `.config/hypr/hyprshade.toml`: configuración de Hyprshade para el shader.
- `.config/hypr/shaders/vibrance-strong.glsl`: shader personalizado de saturación.

## Dependencias

- Hyprland 0.56 o una versión compatible con esta configuración en Lua.
- Hyprshade, para utilizar el shader de saturación.
- Ghostty, para el atajo que abre el terminal.
- Spotify instalado mediante Flatpak, para el atajo correspondiente.
- Dolphin, para el gestor de archivos.
- Brave Browser, para el navegador.

Los nombres de los ejecutables y el método de instalación de las aplicaciones
pueden variar según la distribución y la forma en que se hayan instalado.

## Atajos personales

| Atajo | Acción |
|---|---|
| `Ctrl + F1` a `Ctrl + F5` | Cambiar a los escritorios 1 a 5 |
| `Super + Insert` | Abrir Ghostty |
| `Super + S` | Abrir Spotify mediante Flatpak |
| `Super + E` | Abrir Dolphin |
| `Super + H` | Abrir Brave Browser |
| `Super + Page Up` | Maximizar o restaurar una ventana |
| `Super + Page Down` | Ocultar o recuperar una ventana |
| `Alt + Tab` | Cambiar de ventana |
| `Super + Shift + D` | Mostrar u ocultar el escritorio |

Estos atajos pueden entrar en conflicto con otros configurados por el shell,
el compositor o sus herramientas de configuración. Revisa los atajos existentes
antes de instalarlos en otra sesión.

## Shader de saturación

El shader se configura mediante `hyprshade.toml` y se encuentra en
`shaders/vibrance-strong.glsl`.

Si Hyprshade está instalado y reconoce el shader, puede activarse con:

```bash
hyprshade on vibrance-strong
```

Para desactivarlo:

```bash
hyprshade off
```

## Instalación manual

1. Haz una copia de seguridad de los archivos existentes en `~/.config/hypr/`.
2. Revisa los archivos de este repositorio y adapta las aplicaciones y los atajos
   a tu sistema.
3. Copia los archivos a sus rutas correspondientes dentro de `~/.config/hypr/`.
4. Instala Hyprshade si quieres utilizar el shader.
5. Valida la configuración antes de recargar Hyprland.

No reemplaces tu configuración actual sin revisarla primero. Este repositorio
es una configuración personal y puede necesitar ajustes en otros sistemas.

## Alcance

Este repositorio no incluye una configuración completa del shell, del panel,
del lanzador de aplicaciones, del gestor de notificaciones ni de la pantalla
de bloqueo. Esos componentes deben configurarse por separado.
