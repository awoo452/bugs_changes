# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.8] - 2026-03-19
### Changed
- Refreshed Gemfile.lock via bundle update for Ruby 4.0.2.

## [0.0.7] - 2026-03-19
### Changed
- Pinned Ruby to 4.0.2 across runtime files and Gemfile.lock.

## [0.0.6] - 2026-03-19
### Removed
- Removed application CSS and stylesheet tag to keep the template backend-only.
- Removed view class attributes to keep the template backend-only.

## [0.0.5] - 2026-03-19
### Changed
- README.md updated to explain this repository.

## [0.0.4] - 2026-03-19
### Added
- Bug reporting flow with `Bug` model, migration, controller, routes, and a full form (`/bugs/new`) capturing reporter info, summary, details, reproduction steps, expectations, severity, status, and environment.
- Change request flow with `ChangeRequest` model, migration, controller, routes under `/changes`, and a form for requester info, summary, details, benefit, acceptance criteria, priority, status, and target release.
- Root route now points to the bug report form, with cross-links between bug and change forms.

## [0.0.3] - 2026-03-19
### Added
- Added `test/application_system_test_case.rb` and a minimal `test/system/smoke_test.rb` so `test:system` has a real target and does not fail on fresh apps.

## [0.0.2] - 2026-03-19
### Changed
- Switched Active Record to PostgreSQL in `config/database.yml`, including new `bugs_changes_development`/`bugs_changes_test` databases and a production setup that sources all roles (primary/cache/queue/cable) from `DATABASE_URL`.
- Replaced `sqlite3` with `pg (~> 1.6)` in `Gemfile` and refreshed `Gemfile.lock` to remove sqlite3 and add pg.
- Updated `Dockerfile` to install `libpq5` at runtime and `libpq-dev` for gem compilation instead of SQLite packages.
- Adjusted the storage volume comment in `config/deploy.yml` to reflect Active Storage usage only (no SQLite DB files).
- Added a PostgreSQL service and `DATABASE_URL` to GitHub Actions CI for `test` and `system-test` jobs so Rails tests can connect to Postgres.

## [0.0.1] - 2026-03-19
### Added
- Basic rails app
