---
type: project-index
status: active
created: 2026-05-07
updated: 2026-05-07
owner: A511741
tags:
  - projects
  - subproject
  - circuit-analysis
  - physical
---

# T15 - Define Circuit Analysis Methodology

## Purpose

Define a repeatable circuit analysis methodology with documentation, references, and examples that can support smartcard lab qualification work.

Parent project: [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/Index|Lab Qualification - Smartcard Attack Methods]]

## Source

- [[40_Tasks/todo|T-20260507-02]]
- Group task `T15`
- JIL relevance: sections `2.1 Physical Attacks`, `2.2 Overcoming sensors and filters`, and `3 Countermeasure list`

## Current Focus

- Build a method outline for circuit observation, routing analysis, and attack-point identification.
- Collect representative examples and reference material.
- Define how the methodology links to FIB, probing, ROM reading, and sensor bypass scenarios.

## Relation To Source Document

- This task is the preparation layer for several JIL attack classes, especially `2.1 Physical Attacks` and `2.2 Overcoming sensors and filters`.
- The document treats de-processing, localisation, reverse engineering, and signal identification as recurring prerequisites rather than isolated tricks.
- The countermeasure list in section `3` gives the structure for what your methodology should inspect and record.

## Useful Information From Source

- `2.1` describes de-processing, layering, probing, ROM reading, and adding or cutting connections as standard physical access paths, so your methodology should include a decision tree for which access path fits which objective.
- The probing examples show a practical workflow: de-process, inspect with microscopy, reverse engineer wiring, then correlate command execution and signal activity to locate useful wires.
- `2.2` says sensor bypass starts with locating and analysing the sensor before choosing disconnection, behaviour change, or timing/coverage-gap exploitation, which means circuit analysis should explicitly support sensor mapping.
- Section `3` lists relevant countermeasure families such as active shield, multi-layer interconnect, randomised layout, input filters, and secure test modes; these are good headings for a reusable inspection checklist.

## Open Questions

- Which chip families should be used as reference cases?
- What minimum evidence set is needed for the methodology to be usable by the team?
- Should the first output be a procedure note, a template, or an internal guide?
