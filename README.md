# Open Source Audit - Samarth Dwivedi
**Roll Number:** 24BCE11041
**Software Chosen:**  VLC Media Player

## Description
[cite_start]This repository contains five shell scripts developed for the OSS NGMC Capstone Project[cite: 4]. [cite_start]These scripts demonstrate Linux system administration skills, package management, and the application of open-source philosophy through automation[cite: 14, 15].

## Scripts Overview
1. [cite_start]**system_identity.sh**: Displays system info, kernel version, and OS license[cite: 93].
2. [cite_start]**package_inspector.sh**: Checks if the audited software is installed and provides a philosophy note[cite: 125].
3. [cite_start]**dir_auditor.sh**: Audits permissions and disk usage of critical Linux directories[cite: 145].
4. [cite_start]**log_analyzer.sh**: Scans log files for specific keywords (e.g., errors) and provides a count[cite: 163].
5. [cite_start]**manifesto_gen.sh**: An interactive script that generates a personalized open-source philosophy statement[cite: 185].

## Instructions to Run
1. **Clone the repository:**
   `git clone https://github.com/yourusername/oss-audit-[rollnumber].git`
2. **Navigate to the folder:**
   `cd oss-audit-[rollnumber]`
3. **Grant execution permissions:**
   `chmod +x *.sh`
4. **Run the scripts:**
   - `./system_identity.sh`
   - `./package_inspector.sh`
   - `./dir_auditor.sh`
   - `./log_analyzer.sh /var/log/syslog` (Note: May require `sudo` for some logs)
   - `./manifesto_gen.sh`

## Dependencies
- Bash Shell
- Standard Linux utilities: `grep`, `awk`, `du`, `dpkg` (for Debian-based systems)[cite: 128, 148].
