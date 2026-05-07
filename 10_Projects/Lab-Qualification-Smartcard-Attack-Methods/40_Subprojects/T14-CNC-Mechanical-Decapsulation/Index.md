---
type: project-index
status: active
created: 2026-05-07
updated: 2026-05-07
owner: A511741
tags:
  - projects
  - subproject
  - cnc
  - decapsulation
---

# T14 - CNC Mechanical Decapsulation

## Purpose

Develop a mechanical decapsulation workflow using CNC as a supporting capability for physical smartcard evaluation work.

Parent project: [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/Index|Lab Qualification - Smartcard Attack Methods]]

## Source

- [[40_Tasks/todo|T-20260507-03]]
- Group task `T14`
- JIL relevance: section `2.1 Physical Attacks`

## Current Focus

- Define the CNC-based opening workflow and sample handling constraints.
- Identify tooling, fixtures, and safety requirements.
- Connect the output of decapsulation to later probing, FIB, imaging, or fault-injection steps.

## Relation To Source Document

- This task supports the physical access chain in `2.1 Physical Attacks`.
- The JIL document treats de-processing and layer access as prerequisites for later attacks such as probing, reverse engineering, and physical modification.
- CNC decapsulation is not named directly, but it fits the preparation stage needed before the attacks in `2.1` can begin.

## Useful Information From Source

- `2.1` says the first goal of physical preparation is to remove material and gain access to upper metal layers or dedicated areas, so your CNC workflow should be evaluated by how reliably it exposes later attack surfaces.
- The document distinguishes whole-chip de-processing from localised work, which is useful when defining different CNC preparation modes instead of one generic opening process.
- The probing examples show that preparation quality directly affects localisation and acquisition, so this subproject should record not only whether a package is opened, but whether the result is usable for microscopy, probing, FIB, or laser follow-up.
- The physical attack rating examples also imply that sample count, preparation time, and repeatability matter; these should be captured as metrics in your decapsulation method.

## Open Questions

- Which package types should be used for the first tests?
- What failure modes are acceptable during early trials?
- Which evidence is needed to show this as a usable lab capability?
