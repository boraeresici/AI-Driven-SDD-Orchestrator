# SDD Workflow Flows

**Version**: 1.2.0  
**Created**: 2025-01-27  
**Last Updated**: 2025-09-18

## Overview
This document defines the detailed workflow for generating SDD artifacts from user ideas using remote templates.

Default templates repository: https://github.com/boraeresici/AI-Driven-SDD-Orchestrator

## Workflow Steps

### Step 1: Project Initialization & Template Fetching
1. Use the uvx command to initialize the project:
   ```
   uvx --from git+https://github.com/boraeresici/AI-Driven-SDD-Orchestrator orca init <PROJECT_NAME>
   ```
2. Change to the project directory:
   ```
   cd <PROJECT_NAME>
   ```
3. Verify that all required templates and files are present in the project directory
4. Read `flows.md` to understand the process

### Step 2: Research Phase
**Input**: User idea, research template  
**Output**: `research.md`
**Process**:
- Analyze user idea for technical decisions needed
- Research best practices and alternatives
- Document decisions, rationale, alternatives considered
- Mark open questions as [NEEDS CLARIFICATION]

### Step 3: Feasibility Phase
**Input**: User idea, research findings, feasibility template  
**Output**: `feasibility.md`
**Process**:
- Use research findings to assess business feasibility
- Evaluate technical feasibility based on requirements
- Identify risks and mitigation strategies
- Estimate timeline and costs
- Define success metrics and go/no-go criteria

### Step 4: Architecture & Design Phase
**Input**: User idea, research findings, feasibility assessment, architecture template  
**Output**: `architecture-design.md`
**Process**:
- Define system context and constraints
- Design logical architecture and components
- Specify data flow and deployment topology
- Define non-functional requirements (NFRs)
- Address security and observability concerns

### Step 5: Data Model Phase
**Input**: User idea, architecture design, data-model template  
**Output**: `data-model.md`
**Process**:
- Extract entities from user requirements
- Define relationships and cardinalities
- Specify validation rules and constraints
- Address privacy and compliance requirements
- Define access patterns and indexing needs

### Step 6: Implementation Plan Phase
**Input**: All previous artifacts, plan template  
**Output**: `plan.md`
**Process**:
- Summarize what and why
- Define execution flow and milestones
- Identify dependencies and constraints
- Assess risks and mitigation strategies
- Set acceptance and exit criteria

### Step 7: Tasks Phase
**Input**: All previous artifacts, tasks template  
**Output**: `tasks.md`
**Process**:
- Generate setup tasks (project structure, tooling)
- Create test-first tasks (TDD approach)
- Define core implementation tasks
- Add integration tasks
- Include polish tasks (testing, documentation)
- Mark parallelizable tasks with [P]
- Order by dependencies

### Step 8: Validation & Output
**Process**:
- Ensure all mandatory files exist
- Count [NEEDS CLARIFICATION] markers
- Generate follow-up questions list
- Write all files to `specs/[FEATURE_SLUG]/` directory

## Quality Gates
- Each phase must complete before next phase
- All [NEEDS CLARIFICATION] items must be documented
- All functional requirements must be testable
- No implementation details in business-facing documents

## Error Handling
- If template missing: Create minimal default template
- If user idea unclear: Mark as [NEEDS CLARIFICATION]
- If phase fails: Document failure reason and retry approach

## Version History
- v1.0.0 (2025-01-27): Initial SDD workflow definition
- v1.1.0 (2025-09-17): Updated workflow steps
- v1.2.0 (2025-09-18): Added uvx command for project initialization
