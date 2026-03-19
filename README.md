# Bugs & Changes Standard

This repo is the canonical standard for reporting bugs and requesting changes across all of my apps. It provides a simple, consistent intake flow so every report contains the same core information, regardless of the app.

## What This Is

- A Rails app with two intake flows: bug reports and change requests.
- A shared standard for the fields, statuses, and severity/priority levels used across projects.

## When To Use

- **Bug report**: Something is broken, incorrect, or behaving unexpectedly.
- **Change request**: A new capability, improvement, or adjustment is desired.

## How To Submit

- Bug report: `GET /` (root) or `GET /bugs/new`
- Change request: `GET /changes/new`

Each form captures required reporter/requester info plus structured fields to make triage fast and consistent.

## Bug Report Schema

Required fields:
- `reporter_name`
- `reporter_email`
- `summary`
- `details`

Optional fields:
- `steps_to_reproduce`
- `expected_behavior`
- `actual_behavior`
- `environment`

Severity values:
- `low`, `medium`, `high`, `critical`

Status values:
- `new`, `triaged`, `in_progress`, `resolved`, `wont_fix`

## Change Request Schema

Required fields:
- `requester_name`
- `requester_email`
- `summary`
- `details`

Optional fields:
- `benefit`
- `acceptance_criteria`
- `target_release`

Priority values:
- `low`, `medium`, `high`, `urgent`

Status values:
- `new`, `reviewing`, `approved`, `in_progress`, `completed`, `rejected`

## Workflow Expectations

- **Triage**: New items should be reviewed quickly and moved out of `new`.
- **Updates**: Status should reflect the current reality, not a future intention.
- **Consistency**: Use the exact values above so reporting and automation stay clean.

## Local Setup (Optional)

If you want to run this app locally:

```bash
bundle install
bin/rails db:create db:migrate
bin/rails server
```

Then open `http://localhost:3000`.
