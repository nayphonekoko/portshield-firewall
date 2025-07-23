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


Testing
Use tools like nmap from another machine or your host to scan the firewall ports:
nmap -sS -p 9900-9999 <firewall_ip>

This will trigger PSAD alerts and logs, demonstrating the firewall’s effectiveness.

<img width="1589" height="811" alt="Screenshot 2025-07-23 130820" src="https://github.com/user-attachments/assets/e2c90cab-e2e1-43bb-b673-fb3055e5b8cd" />


Project Structure

portshield-firewall/
├── rules/
│   └── base_rules.sh       # Iptables rules script
├── psad.conf               # Customized PSAD config
├── screenshots/
│   └── firewall_demo.png   # Example screenshot of detection
├── README.md               # Project documentation

Author
Nay Phone Ko Ko
