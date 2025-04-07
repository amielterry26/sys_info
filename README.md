# 🖥️ doineedtoupgrade

A simple, readable system info script for Mac — built for humans.  
Outputs your current system specs in layman’s terms so you can quickly assess your machine's performance and decide if it's time for an upgrade.

---

## 🎯 Objective

To display key Mac system information in a **clean, easy-to-understand format** — not as a wall of technical jargon, but as something anyone can glance at and understand.

---

## Current Features

-  **Hardware Info**
    - Memory (RAM) in GB
    - Processor (CPU) model
    - Mac model identifier

- **Storage**
    - Total, used, and available space (in GB)

- **Software**
    - macOS version
    - System uptime

- **Network**
    - Current user
    - Local IP address

- **Power**
    - Battery percentage and charging status

---

## Planned Features & Roadmap

- **Upgrade Suggestions**
    - Recommend upgrade if RAM is low
    - Alert if storage is consistently near full
    - Note if OS is outdated

- **Internet Diagnostics**
    - Test connectivity
    - Show Wi-Fi strength & SSID

- **“Plain vs Pretty” Mode**
    - `--plain` flag for clean output without emojis

- **Export Options**
    - Save output as `.txt` or `.json`
    - Option to email or log info

- 🌱 **Beginner Help**
    - Inline explanations: what is RAM, why does uptime matter, etc.
    - Link to upgrade resources (e.g., Apple RAM upgrade guide)

- 💻 **GUI Wrapper (Phase 2)**
    - Simple macOS app using Automator or Swift
    - Drag-and-drop version for non-technical users

- 🌐 **HTML/Hosted Version**
    - Embed script in a static S3-hosted HTML page
    - Possible domain: `doineedtoupgrade.com`

---

## 📦 Installation & Usage

```bash
chmod +x system_info.sh
./system_info.sh