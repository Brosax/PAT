---
type: project-index
status: active
created: 2026-05-07
updated: 2026-05-07
owner: A511741
tags:
  - projects
  - subproject
  - dfa
  - laser
---

# T07 - Laser-Based DFA PoC

## Purpose

Build a proof of concept for laser-based differential fault analysis aligned with the laboratory qualification track for smartcard attack methods.

Parent project: [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/Index|Lab Qualification - Smartcard Attack Methods]]

## Source

- [[40_Tasks/todo|T-20260507-01]]
- Group task `T07`
- JIL relevance: sections `2.3 Perturbation Attacks` and `2.4 Retrieving keys with FA`

## Current Focus

- Implement DFA using laser with hardware acceleration.
- Define the first target algorithm and fault model.
- Prepare the setup, trace collection approach, and success criteria.

## Relation To Source Document

- This task sits directly on the path described in `2.3 Perturbation Attacks` and `2.4 Retrieving keys with FA`.
- The document treats DFA as a two-part problem: first generate exploitable faulty outputs, then analyse them with algorithm-specific tools.
- The JIL text explicitly names laser as a semi-invasive way to create the perturbation needed for DFA.

## Useful Information From Source

- `2.4` says DFA needs a correct and a faulty cryptographic output produced from the same input, so your PoC should be designed around collecting output pairs rather than only observing faults.
- `2.4` also says the injected fault must meet timing and value constraints, which means synchronisation and fault model definition are not optional setup details but core work items.
- `2.3` says perturbation development normally starts by finding any observable effect and then refining parameters such as timing, location, and energy, which is a practical sequence for your first experiments.
- `2.4` and `2.3` together imply three concrete deliverables for this subproject: a repeatable fault-injection window, a faulty-output capture flow, and an analysis script or toolchain for the chosen algorithm.

## Open Questions

- Which device and algorithm should be the first PoC target?
- Which laser setup and timing control are already available in Malaga?
- What evidence should count as a valid PoC for qualification progress?
