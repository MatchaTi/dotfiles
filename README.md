### My Cool Dotfiles

#### Preview

![Preview](./assets/desktop.png)

Repositori ini berisi konfigurasi pribadi ana untuk sistem Linux, dirancang untuk meningkatkan produktivitas dan estetika. Semua konfigurasi dikelola menggunakan GNU Stow agar mudah di-deploy ke sistem baru.

#### Specification

- 🖥️ OS: _Arch Linux_
- 🪟 WM: _Sway_
- 📟 Terminal: _Kitty_
- 📊 Status Bar: _Swaybar_
- 🚀 Launcher: _wmenu-run_
- 📁 File Manager: _Yazi Terminal File Manager_
- 🖋️ Code Editor: _NVim_
- ✍️ Font: _JetBrainsMono Nerd Font_
- 🧭 Browser: _Firefox_
- 🐚 Shell: _Zsh_

#### Dependencies

Pastikan aplikasi berikut sudah terinstal di sistem Antum:

- `GNU Stow` untuk manajemen dotfiles.
- `Sway`, `Swaybar`, `wmenu-run`, `Yazi`, `NVim`, `Zsh`, dan `Firefox` untuk konfigurasi utama.

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
   stow sway kitty nvim zsh
   ```

Selamat menggunakan dan bereksperimen dengan konfigurasi ini! 😊
