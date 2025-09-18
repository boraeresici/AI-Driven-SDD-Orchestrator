# ORCA : AI-Driven SDD Orchestrator

**Version**: 1.1.0  
**Created**: 2025-01-27  
**Last Updated**: 2025-09-17

## Overview

This AI-Driven SDD Orchestrator defines an AI-driven Software Design Document (SDD) generation system that automatically creates comprehensive project documentation from user ideas using remote templates. The system operates independently of Spec Kit and follows a structured SDD methodology.

## System Architecture

```
User Idea → AI Orchestrator → Remote Templates → SDD Artifacts
```

### Components

1. **Orchestrator Prompt** (`prompts.md`)
   - Main AI prompt that coordinates the entire process
   - Defines input parameters and high-level algorithm
   - Handles repository fetching and template processing

2. **Workflow Definition** (`flows.md`)
   - Detailed step-by-step SDD process
   - Quality gates and error handling
   - Version-controlled workflow management

3. **Template Library** (`templates/`)
   - Standardized templates for each SDD phase
   - Version-controlled template management
   - Consistent structure across all artifacts

## SDD Workflow Phases

### Phase 0: Research & Feasibility
- **Research** (`research.md`): Technical decisions, rationale, alternatives
- **Feasibility** (`feasibility.md`): Business/technical feasibility assessment

### Phase 1: Design & Architecture
- **Architecture & Design** (`architecture-design.md`): System design, NFRs, security
- **Data Model** (`data-model.md`): Entities, relationships, validation rules

### Phase 2: Planning & Implementation
- **Implementation Plan** (`plan.md`): Execution strategy, milestones, risks
- **Tasks** (`tasks.md`): Detailed implementation tasks with TDD approach

## Usage

### Project Setup

To set up the AI-Driven SDD Orchestrator project:

1. Clone the repository:
   ```bash
   git clone https://github.com/boraeresici/AI-Driven-SDD-Orchestrator.git
   ```
2. Navigate to the project directory:
   ```bash
   cd AI-Driven-SDD-Orchestrator
   ```
3. Run the setup script:
   ```bash
   chmod +x setup_templates.sh
   ./setup_templates.sh
   ```

This script will create the necessary directories and download the required templates.

### Using with AI Development Environments (ADE)

To use this AI-Driven SDD Orchestrator with AI Development Environments like Claude Code:

1. Copy the content of `prompts.md` file.
2. Paste it as a command in your ADE, prefixing it with a slash (/) to execute it as a command.
3. The AI will then guide you through the process, asking for necessary inputs and generating the SDD artifacts.

### Output Management

The generated SDD artifacts will be saved in the `sdd-artifacts/` directory within your project folder. Each artifact will be updated and stored in this directory as the AI processes the templates.

## Detailed Workflow

### User Perspective

1. Set up the project:
   - Clone the repository and run the setup script as guided by the AI.
2. Copy the content of `prompts.md` and paste it into your ADE.
3. Provide your project idea or feature description when prompted.
4. For each SDD artifact:
   - Answer the AI's questions or allow it to proceed with assumptions.
   - Review the generated content and provide feedback.
   - Approve the final version of each artifact.
5. Review the overall SDD summary provided by the AI.
6. Iterate and improve specific artifacts if needed.
7. Confirm the completion of the SDD.
8. Find the generated artifacts in the `sdd-artifacts/` directory.
9. Decide whether to keep or delete the `templates/` directory as it's no longer necessary for the project.

### AI (Orcha) Perspective

1. Guide the user through the project setup process, including cloning the repository and running the setup script.
2. Greet the user and explain the SDD generation process.
3. Request the user's project idea or feature description.
4. For each SDD artifact (research, feasibility, architecture, data model, plan, tasks, open questions):
   - Explain the required information.
   - Generate content based on user input or assumptions.
   - Present the content to the user and request feedback.
   - Update the content based on user feedback.
   - Save the finalized content in the appropriate file in the `sdd-artifacts/` directory.
5. Provide an overall SDD summary and list any areas needing clarification.
6. Offer to iterate on specific artifacts if requested by the user.
7. Conclude the process and provide next steps for the user.
8. Inform the user about the location of generated artifacts and the option to keep or delete the `templates/` directory.

This workflow ensures a collaborative process between the user and the AI, resulting in a comprehensive and tailored Software Design Document.

## Quality Gates

- **Testability**: All functional requirements must be testable
- **Clarity**: Ambiguous items marked with `[NEEDS CLARIFICATION]`
- **Completeness**: All mandatory sections completed
- **Consistency**: Version-controlled templates and workflows

## Error Handling

- **Missing Templates**: Create minimal default templates
- **Unclear Requirements**: Mark as `[NEEDS CLARIFICATION]`
- **Phase Failures**: Document failure reasons and retry approaches

## Version Management

- **Template Versions**: Each template has independent versioning
- **Workflow Versions**: `flows.md` contains version history
- **System Versions**: Overall system version in README

## File Structure

```
AI-Driven-SDD-Orchestrator/
├── README.md                    # This file
├── prompts.md                   # Main orchestrator prompt
├── flows.md                     # Detailed workflow definition
└── templates/
    ├── feasibility.md           # Business/technical feasibility
    ├── research.md              # Technical research and decisions
    ├── data-model.md            # Data entities and relationships
    ├── architecture-design.md   # System architecture and design
    ├── plan.md                  # Implementation planning
    └── tasks.md                 # Detailed implementation tasks
```

## Benefits

1. **Consistency**: Standardized SDD process across all projects
2. **Automation**: AI-driven generation reduces manual effort
3. **Quality**: Built-in quality gates and validation
4. **Flexibility**: Remote template management allows easy updates
5. **Traceability**: Version-controlled templates and workflows
6. **Scalability**: Reusable across multiple projects and teams

## Future Enhancements

- Template validation and linting
- Automated testing of generated artifacts
- Integration with project management tools
- Custom template library management
- Multi-language support

## Contributing

When updating templates or workflows:

1. Update version numbers
2. Document changes in version history
3. Test with sample user ideas
4. Update this README if needed

## License

MIT License

Copyright (c) 2025 Bora ERESICI

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

**Created by**: Bora ERESICI  
**LinkedIn**: https://www.linkedin.com/in/boraeresici/  
**Maintainer**: AI-Driven SDD Team  
**Last Review**: 2025-01-27