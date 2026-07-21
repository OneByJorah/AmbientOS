# Security Policy

## Supported Versions

| Version | Supported |
|---------|-----------|
| Latest  | ✅ |
| Older   | ❌ |

## Reporting a Vulnerability

Please do **not** open public GitHub issues for security vulnerabilities.

- Email: **info@jorahone.com**
- Or use GitHub Security Advisories

Please include:

- Type of issue and affected files
- Steps to reproduce
- Suggested impact
- Proof-of-concept if available

We will acknowledge receipt within a few days.

## Security Model

- The server binds to the loopback interface (`127.0.0.1`) by default.
- No telemetry or outbound network access is performed.
- Only file metadata is exposed in `graph.json` — never note contents.
- Config writes are validated against a strict schema before persisting.
