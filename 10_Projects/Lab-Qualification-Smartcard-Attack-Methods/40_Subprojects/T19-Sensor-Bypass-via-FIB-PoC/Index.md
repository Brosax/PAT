---
type: project-index
status: active
created: 2026-05-07
updated: 2026-05-07
owner: A511741
tags:
  - projects
  - subproject
  - fib
  - sensors
---

# T19 - Sensor Bypass via FIB PoC

## Purpose

Build a proof of concept for bypassing sensors through FIB-based modification as part of the physical attack capability track.

Parent project: [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/Index|Lab Qualification - Smartcard Attack Methods]]

## Source

- [[40_Tasks/todo|T-20260507-04]]
- Group task `T19`
- JIL relevance: sections `2.1 Physical Attacks` and `2.2 Overcoming sensors and filters`

## Current Focus

- Identify target sensor classes and expected bypass mechanisms.
- Define the FIB edit plan and validation method.
- Evaluate how bypass success should be observed and documented.

## Relation To Source Document

- This task combines `2.1 Physical Attacks` with `2.2 Overcoming sensors and filters`.
- The document describes sensor bypass as an attack step that is usually combined with physical manipulation or perturbation rather than treated as a standalone end goal.
- FIB is relevant here because JIL treats adding or cutting internal connections as a standard way to manipulate IC behaviour.

## Useful Information From Source

- `2.2` names three main bypass strategies: disconnection or bypassing, changing sensor behaviour, and exploiting gaps in spatial or timing coverage. That gives you a clean way to classify candidate PoCs.
- `2.2` also says the first step is to locate and analyse the sensor, so this subproject should not jump straight to FIB editing without a sensor-localisation stage.
- The document notes that overcoming sensors can enable perturbation and DFA-style attacks, which means this PoC should define the follow-on attack it is meant to unlock.
- `2.1` says cutting and adding connections can force permanent faults or bypass security features; that is the direct technical justification for using FIB in this workstream.

## Open Questions

- Which sensor family is the first realistic target?
- What access preparation is required before FIB work begins?
- How should the PoC distinguish permanent bypass from temporary environmental influence?
