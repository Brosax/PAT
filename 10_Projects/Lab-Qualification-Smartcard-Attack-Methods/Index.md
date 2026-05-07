---
type: project-index
status: active
created: 2026-05-07
updated: 2026-05-07
owner: A511741
tags:
  - projects
  - lab-qualification
  - smartcard
  - attack-methods
---

# Lab Qualification - Smartcard Attack Methods

## Purpose

Build a clear work package for obtaining or preparing laboratory qualification capability related to smartcard and security IC attack-method evaluation.

Primary source: [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/00_Source/JIL-Attack-Methods-for-Smartcards-v2-4.pdf|JIL Attack Methods for Smartcards and Similar Devices v2.4]]

## Current Status

- Project created on 2026-05-07 from Inbox triage.
- Source PDF is kept in this vault and included in git backup by user confirmation.
- Qualification scheme still needs confirmation: CC/ITSEF, JIL/JIWG, SESIP-related capability, or internal lab readiness.

> [!warning] Distribution Note
> The source PDF contains controlled-distribution wording. User confirmed local vault storage and GitHub backup on 2026-05-07.

## Source Classification

| Area | PDF section | Capability relevance |
| --- | --- | --- |
| Physical attacks | 2.1 | FIB, probing, ROM reading, microelectronic access, adding or cutting IC connections |
| Sensors and filters | 2.2 | Sensor bypass, environmental-condition manipulation, coverage gaps |
| Perturbation attacks | 2.3 | Fault injection through voltage, clock, laser, temperature, or other stress sources |
| Fault analysis | 2.4 | DFA and related key-recovery workflows using faulty outputs |
| Side-channel attacks | 2.5 | SPA, DPA, profiled attacks, template attacks, ML-based SCA |
| Test features | 2.6 | Test mode, fuse, lifecycle, access-code and error-counter attack scenarios |
| RNG attacks | 2.7 | TRNG, PRNG, HRNG prediction, entropy reduction, output forcing |
| Software attacks | 2.8 | Protocol, command, replay, MITM, buffer overflow, malicious code and firewall bypass |
| Application isolation | 2.9 | Java Card, GlobalPlatform, applet isolation, partial attack paths and full attack paths |
| Countermeasures | 3 | Hardware and software countermeasure checklist for readiness mapping |

## Initial Workstreams

- Map document sections to required lab capabilities, equipment, procedures, evidence, and staff expertise.
- Create a gap analysis against current Malaga fault injection and side-channel capabilities.
- Decide which qualification target this project supports.
- Select the first practical PoC path, likely aligned with laser DFA, circuit analysis, or FIB/sensor goals.

## Subprojects

- [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/40_Subprojects/T07-Laser-Based-DFA-PoC/Index|T07 - Laser-Based DFA PoC]]
- [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/40_Subprojects/T15-Define-Circuit-Analysis-Methodology/Index|T15 - Define Circuit Analysis Methodology]]
- [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/40_Subprojects/T14-CNC-Mechanical-Decapsulation/Index|T14 - CNC Mechanical Decapsulation]]
- [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/40_Subprojects/T19-Sensor-Bypass-via-FIB-PoC/Index|T19 - Sensor Bypass via FIB PoC]]
- [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/40_Subprojects/T23-Integrate-Fuse-Attacks-Into-PoCs/Index|T23 - Integrate Fuse Attacks Into PoCs]]

## Related Ongoing Projects

- [[10_Projects/EMFI-Automation-ChipShouter/Index|EMFI Automation ChipShouter]]
- [[10_Projects/Low-Cost-Mounting-Station/Index|Low Cost Mounting Station]]
- [[10_Projects/AI-Driven-Code-Analysis-Workflow/Index|AI Driven Code Analysis Workflow]]
- [[10_Projects/Laser-Fault-Injection-Skills/Index|Laser Fault Injection Skills]]
- [[10_Projects/IR-Camera-Component-Identification/Index|IR Camera Component Identification]]

## Related Tasks

- [[40_Tasks/todo|Personal Todo Ledger]]
- Group goals already captured in the todo ledger: T07, T14, T15, T19, and T23.

## Open Questions

- Which qualification target is required: CC/ITSEF, JIL/JIWG, SESIP, or internal readiness?
- Which evidence format is expected: equipment list, test procedure, competence matrix, sample report, or audit-ready package?
- Which capability should be demonstrated first for the next OST update?
