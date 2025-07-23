# PortShield Firewall 🔥

A Linux-based personal firewall built with `iptables` and enhanced with **PSAD** (Port Scan Attack Detector) to monitor, log, and react to suspicious network scans and attacks.

---

## Features

- Custom iptables rules for strict traffic filtering
- Real-time logging of dropped packets
- Scan detection and alerting with PSAD
- Tested with tools like `nmap` and `hping3`
- Configurable email alerts for detected threats
- Easy deployment via shell scripts

---

## Getting Started

### Prerequisites

- Kali Linux or other Debian-based Linux distribution
- Root privileges for applying firewall rules and managing PSAD
- `iptables` and `psad` installed (`sudo apt install iptables psad`)

### Setup & Usage

1. Apply firewall rules:

   ```bash
   sudo ./rules/base_rules.sh
2. Restart PSAD to reload configuration:
sudo systemctl restart psad

3. Check PSAD status and detected scans:

sudo psad --Status

4. Review logged dropped packets:

sudo dmesg | grep "DROP INPUT"

5. Testing
Use tools like nmap from another machine or your host to scan the firewall ports:

nmap -sS -p 9900-9999 <firewall_ip>


<img width="884" height="739" alt="Screenshot 2025-07-23 122845" src="https://github.com/user-attachments/assets/4997a43b-3051-488a-bf88-37aa65932d38" />
