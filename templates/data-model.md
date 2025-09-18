# Data Model: [FEATURE NAME]

**Template Version**: 1.1.0
**Created**: [DATE]
**Status**: Draft
**Input**: "$USER_IDEA"

---

## 1. Entities

### [Entity Name]
- Description: [AI FILLS]
- Fields:
  - id: [type] (PK)
  - [field_name]: [type] (constraints, default, nullable, unique)
- Derived/Computed Fields: [AI FILLS]
- Validation Rules: [AI FILLS]
- Audit Fields: created_at, updated_at, deleted_at, version (if applicable)

### Entity Variants / Inheritance
- Parent entity: [AI FILLS]
- Variants: [AI FILLS]

---

## 2. Relationships
- [Entity A] 1—* [Entity B] (Cardinality, ownership, cascade rules)
- Integrity constraints (FK behavior, ON DELETE/UPDATE)

---

## 3. Lifecycle & State
- States: [draft, active, archived, deleted]
- Transitions: [rules & triggers]

---

## 4. Access Patterns & Indexes
- Critical queries and expected workloads
- Suggested indexes (single, composite, full-text, partial)
- Partitioning / sharding (if relevant)

---

## 5. Data Volume & Growth
- Initial dataset size (rows, storage)
- Growth expectations (1y, 3y)
- Archival / pruning policy

---

## 6. Privacy & Compliance
- PII / sensitive fields
- Data retention policies
- Deletion / anonymization strategy

---

## 7. Open Questions
- [NEEDS CLARIFICATION: ...]
