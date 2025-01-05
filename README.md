### My Cool Dotfiles

#### Preview

![Preview](assets/paleblue.png)

#### Repositori ini berisi konfigurasi pribadi saya untuk sistem Linux, dirancang untuk meningkatkan produktivitas dan estetika. Semua konfigurasi dikelola menggunakan GNU Stow agar mudah di-deploy ke sistem baru.

#### Specification

- 🖥️ OS: _Endeavour OS_
- 🪟 WM: _i3WM_
- 📟 Terminal: _Kitty_
- 📊 Status Bar: _Polybar_
- 🌀 Compositor: _Picom_
- 🚀 Launcher: _Rofi_
- 📁 File Manager: _Yazi Terminal File Manager_
- 🖋️ Code Editor: _NvChad Distro_
- 🗚  Font: JetBrainsMono Nerd Font

#### Dependencies

Pastikan aplikasi berikut sudah terinstal di sistem Antum:

- **GNU Stow** untuk manajemen dotfiles.
- **i3wm**, **Polybar**, **Kitty**, **Picom**, **Neofetch**,**Neovim**,dan **Rofi** untuk konfigurasi utama.

#### Instalation

1. Clone repositori:

   ```bash
   git clone https://github.com/MatchaTi/dotfiles.git
   ```

2. Masuk ke direktori dotfiles:

   ```bash
   cd dotfiles
   ```

3. Deploy dotfiles menggunakan GNU Stow:
   ```bash
   stow i3 polybar kitty picom nvim rofi neofetch
   ```

Selamat menggunakan dan bereksperimen dengan konfigurasi ini! 😊
