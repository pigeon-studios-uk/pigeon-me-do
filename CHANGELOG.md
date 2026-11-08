# Changelog

All notable changes to Pigeon Me and Do are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-08

First release.

### Highlights

- `/me` and `/do` above heads and in nearby chat
- Character names on Qbox, QBCore and ESX
- Tidied and rate-limited by the server
- Colours, distance, time and names in the config
- 23 languages

### Added

- `/me` and `/do`, shown above the character's head for `Config.Seconds` (three lines at most) and in nearby players' chat with `Config.Chat`, within `Config.Distance`.
- Character names on Qbox, QBCore and ESX, or FiveM names with `Config.Names = 'player'`.
- Server-side tidying (no GTA codes, HTML or new lines, `Config.MaxLength` characters) and a one-a-second limit.
- `Config.Colours` and `Config.Commands`.
- Text and formats in 23 languages, following ox_lib's language with `Config.Locale = 'auto'`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-me-do/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-me-do/releases/tag/v1.0.0
