# 🧰 Cross-Platform Troubleshooting Guide

**Objective**: Resolve common issues across Windows, Ubuntu, and WSL2 environments.

---

## Windows
- Check Event Viewer logs
- Use `sfc /scannow` and `DISM /Online /Cleanup-Image /RestoreHealth`

## Ubuntu
- Check `dmesg`, `journalctl`, and `/var/log/syslog`
- Use `apt --fix-broken install` and `dpkg --configure -a`

## WSL2
- Restart WSL: `wsl --shutdown`
- Reset network: `wsl --update` + `wsl --set-version Ubuntu 2`

---

**Outcome**: Faster resolution across mixed environments with reusable diagnostic steps.
