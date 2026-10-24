# Security Policy

## Supported Versions

The following versions are currently supported with security updates:

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

We take the security of this project seriously. If you discover a potential vulnerability, please follow these steps:

1. **Do not create a public issue**: Report security concerns privately to the maintainers.
2. **Provide detailed information**:
   - Description of the vulnerability.
   - Steps to reproduce or proof-of-concept code.
   - Potential impact of the issue.
3. **Response time**: Maintainers will acknowledge receipt within 48 hours and provide a remediation timeline.

## Security Practices

- **Memory Safety**: All buffer allocations and array indexing in C simulation code include explicit bounds checks and NULL pointer validations.
- **Static Analysis**: The CI pipeline includes static analysis with `cppcheck` and compiler warning flags (`-Wall -Wextra -pedantic`) enabled on all builds.
- **Minimal Dependencies**: The simulation core has zero third-party runtime dependencies, eliminating supply-chain exposure.
