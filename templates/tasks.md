# Tasks: [FEATURE NAME]

**Template Version**: 1.1.0
**Input**: Design docs from `specs/[FEATURE_SLUG]/`
**Prerequisites**: plan.md, feasibility.md, research.md, data-model.md, architecture-design.md

## Execution Rules
- TDD first: Tests must exist before implementation.
- Parallelization: Different files → mark [P] for parallel; same file/sequence → no [P].
- Traceability: Each requirement → at least one test or task.
- Tagging: Use [CORE], [NICE-TO-HAVE], [BLOCKER] to flag priority.
- Checkpoints: After critical tasks, add [CHECKPOINT] with commit & push note.

## Phase 3.1: Setup
- [ ] T001 [CORE] Create project structure per plan.md  
  [CHECKPOINT] git add . && git commit -m "chore: scaffold project structure" && git push -u origin [FEATURE_SLUG]
- [ ] T002 [CORE] Initialize project/tooling (package manager, framework, env)
- [ ] T003 [P] [CORE] Configure linting, formatting, pre-commit hooks, CI/CD
- [ ] T004 [P] [CORE] Setup secrets/config management

## Phase 3.2: Tests First (TDD)
- [ ] T010 [P] [CORE] Contract tests from contracts/ (if any)
- [ ] T011 [P] [CORE] Integration tests from user stories (quickstart, happy path)
- [ ] T012 [CORE] Negative tests for critical failure modes  
  [CHECKPOINT] git add . && git commit -m "test: add contract/integration/negative tests" && git push

## Phase 3.3: Core Implementation
- [ ] T020 [P] [CORE] Models from data-model.md
- [ ] T021 [CORE] Core services / endpoints from architecture-design.md
- [ ] T022 [CORE] Domain logic (business rules, workflows)
- [ ] T023 [P] [NICE-TO-HAVE] CLI / UI stubs (if applicable)

## Phase 3.4: Integration
- [ ] T030 [CORE] Connect to data stores (DB, cache, message bus)
- [ ] T031 [CORE] Connect to external services / APIs
- [ ] T032 [CORE] Implement AuthN/AuthZ middleware (if applicable)
- [ ] T033 [NICE-TO-HAVE] Feature flags / config toggles  
  [CHECKPOINT] git add . && git commit -m "feat: integrate data stores and external services" && git push

## Phase 3.5: Polish
- [ ] T040 [P] [CORE] Unit tests & performance benchmarks
- [ ] T041 [P] [CORE] Security & compliance checks (lint, SAST/DAST, GDPR rules)
- [ ] T042 [P] [CORE] Documentation updates (README, ADRs, API docs)
- [ ] T043 [NICE-TO-HAVE] Release packaging (Docker, deploy scripts, Helm charts)

## Dependencies
- Tests before implementation
- Models → Services → UI
- Core logic before integrations

## Parallel Examples
```
Task: "Contract test for GET /resource in tests/contract/test_resource_get.*" [P]
Task: "Model creation for Entity in src/models/entity.*" [P]
Task: "Security checks (npm audit / trivy scan)" [P]
```
