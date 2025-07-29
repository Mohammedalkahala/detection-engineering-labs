# ⚙️ Sigma to KQL Automation Pipeline (Concept)

**Author:** Mohammed Alkahala  
**Date:** 2024-07-29  

---

## 🎯 Goal

Automate the process of converting Sigma detection rules into KQL format and deploying them to Microsoft Sentinel.

---

## 🧱 Components

- **Sigma Rule Repo**: Stored in `sigma-rules/`
- **Sigma CLI Tool**: `sigmac` to convert YAML to KQL
- **PowerShell / Python Script**: Uploads the resulting queries to Sentinel
- **GitHub Actions** *(optional)*: Run nightly or on push

---

## 🛠️ Tools Required

- [sigmac](https://github.com/SigmaHQ/sigma)  
- Azure CLI  
- Python + `azure-identity`, `azure-monitor-query`

---

## 🔁 Workflow

1. **Developer writes rule** → `sigma-rules/`
2. **Script runs `sigmac`** to convert to `.kql`
3. **Output stored in `siem-detections/`**
4. **Python script or CLI** pushes to Sentinel rule set
5. **CI/CD job (GitHub Actions)** validates and runs pipeline on push

---

## 🧪 Future Ideas

- Include auto-testing KQL for syntax errors
- Add enrichment (MITRE tags, references)
- Auto-create Sentinel Analytics Rule templates

---

## ✅ Outcome

Turn manual detection logic into deployable Sentinel rules automatically, reducing time from research to response.

