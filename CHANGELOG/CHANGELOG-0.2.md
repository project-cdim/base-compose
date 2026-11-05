# Changelog 0.2

## [0.2.1](https://github.com/project-cdim/base-compose/compare/v0.2.0...v0.2.1) - 2026-10-09

The changes from v0.2.0 are as follows:

### Features

- Added the `cdim-client` and `alerta-client` clients to the Keycloak realm configuration.
- Added language selection (English and Japanese) to the Keycloak login page.

### Breaking Changes

- Changed the following files to be generated from templates at installation, with settings taken from the common configuration file (`cdim.env`):
  - `compose.yml` (proxy settings)
  - `.env` (Keycloak hostname and port)
  - `iam/import/CDIM-realm.json` (client URLs)
- Removed the initial user (`administrator`) from the Keycloak realm configuration. Create users manually in the Keycloak admin console after installation.

### Other Changes

- Upgraded Go for message-broker-setting (1.24 to 1.26)
- Upgraded NATS CLI (0.2.3 to 0.4.0)

## [0.2.0](https://github.com/project-cdim/base-compose/compare/v0.1.1...v0.2.0) - 2026-03-24

The changes from v0.1.1 are as follows:

### Features

- Added CDIM UI theme to Keycloak

### Other Changes

- Upgraded Keycloak (26.1 to 26.4)
- Upgraded Kong (3.8 to 3.9)
- Updated the Keycloak startup command
