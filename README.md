## Prerequisites

- Kali Linux or other Debian-based Linux distribution
- Root privileges for applying firewall rules and managing PSAD
- `iptables` and `psad` installed (`sudo apt install iptables psad`)

## Setup & Usage

1. Apply firewall rules:

```bash
sudo ./rules/base_rules.sh
Restart PSAD to reload configuration:

sudo systemctl restart psad
Check PSAD status and detected scans:

sudo psad --Status
Review logged dropped packets:
sudo dmesg | grep "DROP INPUT"
Testing: Use tools like nmap from another machine or your host to scan the firewall ports:

nmap -sS -p 9900-9999 <firewall_ip>
