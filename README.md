# AnOS

> **Bản phân phối Linux dựa trên Arch, tối ưu hóa toàn diện cho người Việt**

AnOS là một distro Linux được xây dựng trên nền Arch Linux, tích hợp sẵn bộ công cụ và ứng dụng phù hợp với nhu cầu của người dùng Việt Nam — từ bộ gõ tiếng Việt, môi trường lập trình, đến trình duyệt và giải trí.

> ⚠️ AnOS là distro **rolling release**. Kho package được build tự động **mỗi ngày** — phiên bản luôn là mới nhất, không cần cập nhật thủ công.

---

## ✨ Đặc điểm nổi bật

- 🇻🇳 Hỗ trợ tiếng Việt ngay từ đầu với **Fcitx5 Lotus** (bộ gõ Unikey-style)
- 🎨 Giao diện KDE Plasma hiện đại, tinh chỉnh sẵn
- 🛠️ Công cụ lập trình đầy đủ: Flutter, Android Studio, VS Code
- 🖥️ Ứng dụng hệ thống tự phát triển bằng **Flutter** và **Python/PySide6**
- 📦 Kho package riêng tại [AnOS-Repo](https://github.com/AnOS-Project/AnOS-Repo/) với CI build tự động hàng ngày

---

## 📦 AnOS Repository

**Repo:** https://github.com/AnOS-Project/AnOS-Repo/

### Ứng dụng hệ thống

| Package | Mô tả |
|---|---|
| `anos-welcome` | Màn hình chào mừng AnOS |
| `sudo-gui` | Giao diện đồ họa cho sudo |
| `tuxver` | Xem thông tin hệ thống (winver cho Linux) |
| `fcitx5-lotus-bin` | Bộ gõ tiếng Việt |

### Ứng dụng phát triển

| Package | Mô tả |
|---|---|
| `flutter-bin` | Flutter SDK |
| `android-studio` | Android Studio |
| `visual-studio-code-bin` | Visual Studio Code |

### Ứng dụng người dùng

| Package | Mô tả |
|---|---|
| `google-chrome` | Trình duyệt Google Chrome |
| `freetube-bin` | Xem YouTube không quảng cáo |
| `harmonymusic` | Nghe nhạc (Spotify, YT Music,...) |
| `legcord-bin` | Discord client nhẹ hơn |

### Driver NVIDIA (Legacy)

Dành cho các dòng card **GeForce 400–700 series** và một số card Quadro/Tesla cũ.
Driver được vá sẵn để tương thích với kernel rolling của Arch — không lo conflict khi cập nhật kernel.

| Package | Mô tả |
|---|---|
| `nvidia-390xx-dkms` | Kernel module (DKMS) |
| `nvidia-390xx-utils` | Userspace utilities |
| `opencl-nvidia-390xx` | OpenCL support |
| `lib32-nvidia-390xx-utils` | 32-bit utilities |
| `lib32-opencl-nvidia-390xx` | 32-bit OpenCL support |

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
cd AnOS
sudo ./build.sh
```

ISO output sẽ xuất hiện tại `src/out/`.

---

## 📄 License

GPL-3.0 — xem [LICENSE](LICENSE) để biết thêm chi tiết.
