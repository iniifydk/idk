---
title: Security Measures
---

## Personal Security Measures

# 🐧 Linux
### 🐧 Security-Focused Linux Distros

### Expert Level

| Distro        | Description |
|---------------|-------------|
| **Qubes OS**  | "Security through isolation" – each program runs in its own VM. The most secure for desktop, but very resource-intensive (RAM, CPU) and requires advanced knowledge. |
| **Whonix**    | A two-part system (Gateway + Workstation), tunneling everything through Tor. Typically runs within Qubes or VirtualBox. |
| **Kali Linux** (hardened) | Penetration testing – comes with security tools for experts. Not secure by default for regular use, but can be hardened. |
| **Parrot Security OS** (Full) | A Kali alternative with a stronger focus on anonymity. Advanced features, can be more complex to manage. |
| **Arch Linux** (hardened) | Maximum control. Security depends on the user – with proper configuration (AppArmor, firejail, auditd), it can be very secure, but requires advanced setup and management. |

### ⚙️ Intermediate Level

| Distro        | Description                                                                                                                         |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------|
| **Tails OS**  | A live OS focused on anonymity through Tor. Ideal for dark web use, but less flexible for everyday work. **Runs from a USB drive** and doesn't leave traces on the host machine.                             |
| **Alpine Linux** | A minimalist, extremely lightweight distro. Often used for containers. Secure by default, but not as user-friendly for desktop use. |

### 🧩 User-Friendly Level

| Distro              | Description |
|---------------------|-------------|
| **Fedora KDE / GNOME** | Modern, with excellent SELinux (Mandatory Access Control) integration. Balances security with usability. A good choice for users with higher security demands. |
| **TUXEDO OS**       | Based on Ubuntu, focused on privacy and performance, often paired with TUXEDO hardware. |
| **Linux Mint** (hardened) | User-friendly, based on Ubuntu. Can be hardened with additional measures (firejail, ufw, apparmor) to be secure. |
| **Pop!\_OS** (by System76) | Great out-of-the-box experience and security features. Good integration with Flatpak sandboxing and regular updates. |


## 📝 Recommendations

- For **maximum security + isolation**: Qubes OS
- For **anonymous OS for sensitive activities**: Tails OS or Whonix
- For **everyday secure desktop**: Fedora KDE + custom hardening
- If you want **full control and know what you're doing**: Arch Linux (hardened)

---

- **VPN**: [Surfshark](https://surfshark.com/) (Proton VPN is slower and cost more, Mullvad VPN is fast and secure but i don't like the design)
- **Email**: [ProtonMail](https://proton.me/)
- **Browser**: [LibreWolf](https://librewolf.net/) – hardened Firefox fork
- **Browser Extensions**:
    - [uBlock Origin](https://github.com/gorhill/uBlock)
    - [Privacy Badger](https://privacybadger.org/)
    - [CanvasBlocker](https://github.com/kkapsner/CanvasBlocker)
    - [ClearURLs](https://clearurls.xyz/)
    - [Cookie AutoDelete](https://github.com/Cookie-AutoDelete/Cookie-AutoDelete)
    - [NoScript](https://noscript.net/)
    - [Decentraleyes](https://decentraleyes.org/)
- **Password Manager**: [KeePassXC](https://keepassxc.org/) / KeePassDX (Android)
- **Secure Messaging**: [Signal](https://signal.org/), [Session](https://getsession.org/)
- **Firewall**: [OpenSnitch](https://github.com/evilsocket/opensnitch) (interactive egress firewall)
- **Sandboxing**:
    - [Firejail](https://firejail.wordpress.com/)
    - [AppArmor](https://gitlab.com/apparmor/apparmor)
- **Disk Encryption**: [LUKS](https://gitlab.com/cryptsetup/cryptsetup)
- **System Cleanup**: [BleachBit](https://www.bleachbit.org/)

---

### 🌐 Dark Web Access

- **Operating System**: [Tails OS](https://tails.net/) (amnesic, live OS for anonymity)
- **Access Method**: USB boot, Tor Browser only

---

### 🪟 Windows

- **Telemetry Removal**: [O&O ShutUp10++](https://www.oo-software.com/en/shutup10)
- **Disk Encryption**: [VeraCrypt](https://www.veracrypt.fr/)
- **Firewall**:
    - [Simplewall](https://www.henrypp.org/product/simplewall)
    - [Safing Portmaster](https://safing.io/)
- **Metadata Scrubbing**: [ExifTool](https://exiftool.org/)
  Modded apps are often more secure than normal apps, which is why we have an [PC modification](../PC/modifications.md) section

> *Browser, VPN, email, extensions, password manager, sandboxing, and messaging remain consistent with Linux setup.*

---

### 📱 Mobile (GrapheneOS)

- **Operating System**: [GrapheneOS](https://grapheneos.org/) (hardened Android)
- **2FA**: [Aegis Authenticator](https://getaegis.app/)
- Modded apps are often more secure than normal apps, which is why we have an [Android Apps](/wiki/mobile-apps/android-apps) section
> *VPN/Mail/Browser with Extensions/Messaging/Password Manager  Same as Linux/Windows*

---

### 🔐 Other Security Tools

- **SIM Card**: T-Mobile Prepaid **eSIM** (reduced attack surface)
- **Hardware Keys**:
    - **Thetis PRO FIDO2** – USB-A, USB-C & NFC (Passkey-compatible)
- **Cryptocurrency**:
    - [Cake Wallet](https://cakewallet.com/) – Monero & Bitcoin