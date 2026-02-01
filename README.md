# 🚀 DEVCYBSEC - Neovim Configuration

Esta es mi configuración personal de Neovim, diseñada para maximizar la productividad en el desarrollo de microservicios con **Go** y **NestJS**, manteniendo un enfoque en **Application Security (AppSec)** y rendimiento.

La arquitectura es modular y utiliza **Lazy.nvim** como motor de gestión de plugins, optimizada para Neovim 0.11+.

## 🛠️ Requisitos del Sistema

Antes de clonar e iniciar, asegúrate de tener instaladas las siguientes dependencias en tu entorno (preferiblemente Arch Linux):

### 1. Core de Neovim

* **Neovim v0.11+**: Necesario para el soporte nativo de `vim.lsp.config`.

### 2. Entornos de Lenguaje

* **Go**: Instalado y configurado en el `$PATH`.
* **NVM (Node Version Manager)**: Utilizado para gestionar las versiones de Node.js necesarias para **NestJS**.
* Instalación sugerida: `nvm install --lts`


* **NestJS CLI**: Instalado globalmente via npm (`npm install -g @nestjs/cli`).

### 3. Herramientas de Sistema (Build & Search)

* **GCC / Base-devel**: Requerido para compilar los parsers de **Treesitter**.
* **Ripgrep / fd**: Dependencias para que **Telescope** realice búsquedas instantáneas.
* **Xclip**: Para la sincronización del portapapeles con el Host.

### 4. Interfaz Visual

* **Nerd Fonts**: Se recomienda **JetBrainsMono Nerd Font** para visualizar correctamente los iconos del LSP y la barra de estado.

---

## 📂 Estructura de Archivos

```text
nvim/
├── init.lua              # Punto de entrada y carga de Lazy.nvim
├── lua/
│   ├── core/
│   │   ├── options.lua   # Configuraciones de interfaz y comportamiento
│   │   └── keymaps.lua   # Atajos de teclado personalizados
│   └── plugins/
│       ├── lsp.lua       # Configuración nativa de LSP (Go & TS)
│       ├── treesitter.lua# Resaltado de sintaxis avanzado
│       └── telescope.lua # Buscador difuso (Fuzzy Finder)
└── .gitignore            # Exclusión de archivos temporales

```

---

## 📥 Instalación

1. Respalda tu configuración actual (si existe):
```bash
mv ~/.config/nvim ~/.config/nvim.bak

```


2. Clona este repositorio:
```bash
git clone git@github.com:tu-usuario/nvim-config.git ~/.config/nvim

```


3. Inicia Neovim:
```bash
nvim

```


*Lazy.nvim detectará los plugins faltantes y los instalará automáticamente.*

---

## ⌨️ Atajos de Teclado Principales

| Atajo | Acción |
| --- | --- |
| `jk` | Salir de modo Insertar (Escape) |
| `<leader>ff` | Buscar archivos (Telescope) |
| `<leader>fg` | Buscar texto en archivos (Live Grep) |
| `gd` | Ir a la definición (LSP) |
| `gr` | Ver referencias (LSP) |
| `<leader>sv` | Dividir ventana verticalmente |
| `<leader>nh` | Limpiar resaltado de búsqueda |

---

## 🛡️ AppSec Features

* **Linter Integration**: Configurado para detectar fallos comunes de seguridad en el código mientras escribes.
* **Hermetic Setup**: No depende de configuraciones globales del sistema, permitiendo su uso en entornos de contenedores o laboratorios aislados.
