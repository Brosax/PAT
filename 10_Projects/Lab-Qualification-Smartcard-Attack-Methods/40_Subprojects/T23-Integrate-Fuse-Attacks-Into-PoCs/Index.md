---
type: project-index
status: active
created: 2026-05-07
updated: 2026-05-07
owner: A511741
tags:
  - projects
  - subproject
  - test-features
  - fuse
---

# T23 - Integrate Fuse Attacks Into PoCs

## Purpose

Integrate OTP and fuse-related attack paths into the team's existing and future proof-of-concept workflows.

Parent project: [[10_Projects/Lab-Qualification-Smartcard-Attack-Methods/Index|Lab Qualification - Smartcard Attack Methods]]

## Source

- [[40_Tasks/todo|T-20260507-05]]
- Group task `T23`
- JIL relevance: section `2.6 Exploitation of Test Features`

## Current Focus

- Add fuse and lifecycle-related checks to PoC planning.
- Define which existing PoCs can include test-feature abuse scenarios.
- Capture required assumptions, access conditions, and validation outputs.

## Relation To Source Document

- This task maps directly to `2.6 Exploitation of Test Features`.
- The JIL document treats test-mode access, lifecycle manipulation, and error-counter or access-code abuse as concrete attack families, not just background context.
- Fuse-related work belongs here because one of the explicit examples is an attack against test mode protected by a physical fuse.

## Useful Information From Source

- `2.6` says successful access to test mode may allow memory readout, lifecycle reconfiguration, or error-counter reset, so your PoCs should define which of these effects they are trying to demonstrate.
- The document says test-feature protection is vendor-specific and not described in normal user documentation, which means reverse engineering and testing are expected parts of the work, not exceptions.
- The examples show three useful attack patterns for planning: physical fuse protection, lifecycle-control checks attacked with laser during start-up, and access-code or error-counter protected entry.
- The required demonstration in the examples is simple and concrete: successful execution of test commands after gaining test-mode access. That is a good success criterion to reuse in your own PoC definitions.

## Open Questions

- Which current PoC should receive fuse integration first?
- Are the relevant lifecycle assumptions known for the target devices?
- What is the minimum reproducible demo for this workstream?
