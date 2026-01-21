This repository demonstrates how to deploy an **Azure Public DNS Zone** and an **A record** using **Azure Bicep**.

It is designed as a simple, reusable example that highlights:
- Infrastructure as Code (IaC) best practices
- Parameterization and defaults
- Loop-based resource definitions
- Clean and readable Bicep syntax

---

## What This Deploys

- An Azure **Public DNS Zone**
- An **A record** with one or more IPv4 addresses
- Outputs the **name servers** for DNS delegation

---

## Prerequisites

- Azure subscription
- Azure CLI 2.20+
- Bicep CLI
