# 🕵️‍♂️ OSINT Case Study: Investigating a Phishing C2 Domain

**Date:** 2024-07-29  
**Author:** Mohammed Alkahala  
**Target Indicator:** `hxxp://update-securelogin[.]com`

---

## 🎯 Objective

Investigate the suspicious domain `update-securelogin[.]com`, potentially used as a Command & Control (C2) server in a phishing campaign targeting Office365 users.

---

## 🔍 Tools & Sources Used

- [VirusTotal](https://www.virustotal.com)
- [Shodan](https://www.shodan.io)
- [WHOIS](https://whois.domaintools.com/)
- [GreyNoise](https://viz.greynoise.io/)
- Passive DNS (RiskIQ)

---

## 📊 Findings

- **VirusTotal**: Flagged as malicious by 11 vendors.
- **Shodan**: Hosted on an IP with known history of Cobalt Strike activity.
- **WHOIS**: Recently registered through a privacy provider, shows pattern with known scam infrastructure.
- **GreyNoise**: Confirms scanning activity within last 48 hours tied to botnet behavior.

---

## ⚠️ Implications

- Domain likely part of a phishing-to-C2 kill chain.
- Would trigger detection under:  
  - Suspicious DNS lookups  
  - Beaconing to low-reputation domains  
  - Failed logins tied to phishing

---

## 🔐 Suggested Detection Rule

*SIGMA: DNS request for update-securelogin[.]com*  
*MITRE Technique: T1071.004 (Application Layer Protocol: DNS)*

---

## 🧠 Lessons Learned

- Fast, multi-source OSINT can confirm malicious infrastructure quickly.
- Tying this to detection (e.g. DNS logs, proxy alerts) adds value to detection pipelines.

