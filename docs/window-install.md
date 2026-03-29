# Windows Installation Guide

This guide explains how to install and update **Dartotsu** on Windows using the MSIX package.

## Prerequisites

- **Windows 10 version 1809** or later, or **Windows 11**
- **Developer Mode enabled** (required for unsigned MSIX packages)

## Important Note

The MSIX package is **unsigned** because code signing certificates from trusted Certificate Authorities cost $100-400 per year. This means you **must enable Developer Mode** to install the app.

Enabling Developer Mode is safe and commonly used by developers and power users. It allows Windows to install apps that aren't signed by a trusted certificate authority.

## Installation Steps

### Step 1: Enable Developer Mode

1. Open **Settings** (Windows key + I)
2. Go to **Privacy & Security** → **For developers** (Windows 11)
   - OR **Update & Security** → **For Developers** (Windows 10)
3. Turn on **Developer Mode**
4. Click **Yes** when Windows asks to confirm
5. Wait for Windows to install the necessary components (this may take a minute)

### Step 2: Download the MSIX Package

1. Go to the [Releases page](https://github.com/grayankit/DantotsuRe/releases)
2. Download the latest `Dartotsu-x.x.x-x64.msix` file

### Step 3: Install Dartotsu

1. Double-click the downloaded `.msix` file
2. Click **Install** in the installer window
3. Wait for installation to complete (usually takes 10-30 seconds)
4. Click **Launch** to start Dartotsu, or find it in your Start Menu

That's it! Dartotsu is now installed.

---

## Updating Dartotsu

Updates are simple - just download and install the new version:

1. Download the new `.msix` file from releases
2. Double-click the file
3. Click **Update** (or **Install** if shown)
4. Wait for the update to complete

The app will update in place, preserving your settings and data.

**Note:** Developer Mode must still be enabled for updates.

---

## Uninstalling Dartotsu

### Method 1: Windows Settings

1. Open **Settings** → **Apps** → **Installed apps** (Windows 11)
   - OR **Settings** → **Apps** → **Apps & features** (Windows 10)
2. Search for **Dartotsu**
3. Click the three dots **⋮** next to Dartotsu
4. Click **Uninstall**
5. Confirm the uninstallation

### Method 2: PowerShell

```powershell
# Uninstall Dartotsu
Get-AppxPackage *dartotsu* | Remove-AppxPackage
```

---

## Troubleshooting

### "Installation Failed" or "Can't Install"

**Problem:** Developer Mode is not enabled.

**Solution:** Follow Step 1 above to enable Developer Mode.

---

### "This app package is not supported for installation"

**Problem:** Your Windows version is too old.

**Solution:** Update to Windows 10 version 1809 or later, or upgrade to Windows 11.

---

### "Installation Blocked by Policy"

**Problem:** Your organization has blocked installing apps from outside the Microsoft Store.

**Solution:** Contact your IT administrator. Developer Mode installation may be disabled by company policy.

---

### MSIX File Won't Open

**Problem:** Windows doesn't recognize the file type.

**Solutions:**

1. Make sure the file extension is `.msix` (not `.msix.txt` or similar)
2. Right-click the file → **Open with** → **App Installer**
3. If App Installer is missing, run this in PowerShell as Administrator:
   ```powershell
   Add-AppxPackage -Path "C:\path\to\Dartotsu-x.x.x-x64.msix"
   ```

---

### "App Installer Blocked by Antivirus"

**Problem:** Antivirus software is blocking the installation.

**Solutions:**

1. Temporarily disable your antivirus
2. Add an exception for the MSIX file
3. Download from the official GitHub releases page to ensure the file is legitimate

---

## Why is Developer Mode Required?

Developer Mode is required because the MSIX package is **not signed with a trusted certificate**. Here's why:

- **Trusted certificates cost money**: Code signing certificates from Certificate Authorities (like DigiCert, Sectigo) cost $100-400 per year
- **This is a free, open-source project**: We can't justify that expense for a free app
- **Developer Mode is safe**: It's designed for developers and power users to test apps
- **Your data is safe**: Developer Mode doesn't compromise your system security

In the future, if the project gets funding or sponsorship, we may purchase a trusted certificate to make installation easier.

---

## Is This Safe?

**Yes, as long as you download from the official source:**

- ✅ Only download from [GitHub Releases](https://github.com/grayankit/DantotsuRe/releases)
- ✅ The source code is open and available for review
- ✅ The app runs in a sandboxed environment (MSIX security)
- ✅ Enabling Developer Mode doesn't create security holes
- ⚠️ Never download MSIX files from unofficial sources
- ⚠️ Always verify you're on the correct GitHub repository

---

## System Requirements

- **OS:** Windows 10 version 1809 or later, or Windows 11
- **Architecture:** x64 (64-bit)
- **Disk Space:** ~200 MB for installation
- **RAM:** 4 GB minimum (8 GB recommended)
- **Processor:** 1.8 GHz or faster

---

## Data Location

After installation, Dartotsu stores its data in:

- **Settings:** `%APPDATA%\Dantotsu`
- **Cache:** `%LOCALAPPDATA%\Dantotsu`
- **Logs:** `%APPDATA%\Dantotsu\logs`

---

## Can I Disable Developer Mode After Installing?

**No.** If you disable Developer Mode, Windows will prevent the app from running. You need to keep Developer Mode enabled as long as you want to use Dartotsu.

If this is a concern, you can wait until we obtain a trusted certificate in the future (if/when that happens).

---

## Alternative: Use the Android Version

If you prefer not to enable Developer Mode, you can use Dartotsu on Android instead:

- Install via APK from GitHub Releases
- No special settings required on Android
- Same features and functionality

---

## Need Help?

If you encounter issues not covered in this guide:

1. Check the [GitHub Issues](https://github.com/grayankit/DantotsuRe/issues)
2. Create a new issue with:
   - Windows version
   - Whether Developer Mode is enabled
   - Error messages (screenshots help!)
   - Steps to reproduce

---

## See Also

- [Release Notes](../release.md)
- [Official Repository](https://github.com/grayankit/DantotsuRe)
- [Why Code Signing Certificates Cost Money](https://docs.microsoft.com/en-us/windows/msix/package/signing-package-overview)
