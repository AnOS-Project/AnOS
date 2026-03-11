# AnOS

> **Bản phân phối Linux dựa trên Arch, tối ưu hóa toàn diện cho người Việt**

AnOS là một distro Linux được xây dựng trên nền Arch Linux, tích hợp sẵn bộ công cụ và ứng dụng phù hợp với nhu cầu của người dùng Việt Nam — từ bộ gõ tiếng Việt, môi trường lập trình, đến trình duyệt và giải trí.

---

## ✨ Đặc điểm nổi bật

- 🇻🇳 Hỗ trợ tiếng Việt ngay từ đầu với **Fcitx5 Lotus** (bộ gõ Unikey-style)
- 🎨 Giao diện KDE Plasma hiện đại, tinh chỉnh sẵn
- 🛠️ Công cụ lập trình đầy đủ: Flutter, Android Studio, VS Code
- 🖥️ Ứng dụng hệ thống tự phát triển bằng **Flutter** và **Python/PySide6**
- 📦 Kho package riêng tại [AnOS-Repo](https://github.com/AnOS-Project/AnOS-Repo/) với CI build tự động

---

## 📦 AnOS Repository

Các package độc quyền được host tại kho riêng và tự động build qua GitHub Actions.

**Repo:** https://github.com/AnOS-Project/AnOS-Repo/

### Ứng dụng hệ thống

| Package | Phiên bản | Kích thước | Mô tả |
|---|---|---|---|
| `anos-welcome` | 1.0.0-1 | 8.9 MB | Màn hình chào mừng AnOS |
| `sudo-gui` | 1.0.0-1 | 8.0 KB | Giao diện đồ họa cho sudo |
| `tuxver` | 1.0.0-1 | 12 KB | Xem thông tin hệ thống (winver cho Linux) |
| `fcitx5-lotus-bin` | 1.3.1-1 | 1.3 MB | Bộ gõ tiếng Việt |

### Ứng dụng phát triển

| Package | Phiên bản | Kích thước | Mô tả |
|---|---|---|---|
| `flutter-bin` | 3.41.4-1 | 1.6 GB | Flutter SDK |
| `android-studio` | 2025.3.2.6-1 | 1.3 GB | Android Studio |
| `visual-studio-code-bin` | 1.111.0-1 | 158 MB | Visual Studio Code |

### Ứng dụng người dùng

| Package | Phiên bản | Kích thước | Mô tả |
|---|---|---|---|
| `google-chrome` | 146.0.7680.71-1 | 167 MB | Trình duyệt Google Chrome |
| `freetube-bin` | 0.23.14-1 | 99 MB | Xem YouTube không quảng cáo |
| `harmonymusic` | 1.12.2-1 | 13 MB | Nghe nhạc (Spotify, YT Music,...) |
| `legcord-bin` | 1.2.2-1 | 12 MB | Discord client nhẹ hơn |

### Driver NVIDIA (Legacy — dòng card cũ)

Dành cho các dòng card **GeForce 400–700 series** và một số card Quadro/Tesla cũ.

| Package | Phiên bản | Kích thước |
|---|---|---|
| `nvidia-390xx-dkms` | 390.157-20 | 11 MB |
| `nvidia-390xx-utils` | 390.157-20 | 31 MB |
| `opencl-nvidia-390xx` | 390.157-20 | 22 MB |
| `lib32-nvidia-390xx-utils` | 390.157-2 | 28 MB |
| `lib32-opencl-nvidia-390xx` | 390.157-2 | 22 MB |

---

## 🛠️ Công nghệ sử dụng

Các ứng dụng gốc của AnOS được xây dựng bằng:

- **Flutter** — giao diện đa nền tảng, hiệu suất cao
- **Python + PySide6** — công cụ hệ thống, tiện ích nhỏ gọn

---

## 📁 Cấu trúc repo

```
AnOS/
├── src/
│   ├── airootfs/        # Filesystem gốc của ISO
│   ├── efiboot/         # EFI bootloader config
│   ├── grub/            # GRUB config
│   ├── syslinux/        # Syslinux config
│   └── packages.x86_64  # Danh sách package
├── profiledef.sh        # Cấu hình profile chính
├── build.sh             # Script build ISO (release)
└── build-debug.sh       # Script build ISO (debug)
```

---

## 🔨 Build ISO

> Yêu cầu: Arch Linux, `archiso`, quyền root

```bash
git clone https://github.com/AnOS-Project/AnOS
cd AnOS/src
sudo bash ./build-debug.sh
```

ISO output sẽ xuất hiện tại `out/`.

---

## 📄 License

GPL-3.0 — xem [LICENSE](LICENSE) để biết thêm chi tiết.
