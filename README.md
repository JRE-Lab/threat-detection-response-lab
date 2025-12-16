# Threat Detection and Response Lab (Splunk/Sentinel + Suricata)

This repository contains a step-by-step lab for integrating Suricata network IDS logs with a SIEM (Splunk or Microsoft Sentinel). It covers:

- Installing Suricata from the official OISF PPA and enabling the EVE JSON output to generate structured events. Suricata's EVE JSON stream contains metadata and alerts with an `event_type` field that identifies the type of event.
- Configuring Splunk to ingest Suricata logs via a universal forwarder or HTTP Event Collector and installing the Splunk Technology Add‑On for Suricata for field extraction.
- Running Splunk queries to detect port scans, DNS tunnelling and other anomalies, and creating alerts and dashboards.
- Using Microsoft Sentinel as an alternative SIEM, connecting Suricata logs via the Syslog/CEF connector and writing KQL analytics rules.
- Testing the detection pipeline with simulated attacks and following an incident response workflow (triage, containment, remediation, review).

See the Word document in this repository for the full click-by-click instructions.
