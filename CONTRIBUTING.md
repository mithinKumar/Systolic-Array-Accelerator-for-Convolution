# Contributing to Systolic Array Accelerator

Thank you for considering contributing to this project!

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/Systolic-Array-Accelerator-for-Convolution.git`
3. Create a feature branch: `git checkout -b feature/your-feature-name`
4. Make your changes

## Development Workflow

### Prerequisites
- GCC (C99 compatible)
- GNU Make
- clang-format (for code style)

### Build and Test
```bash
cd c_code_simulation
make all      # Build all binaries
make test     # Run automated tests
make lint     # Check code formatting
make clean    # Remove build artifacts
```

### Code Style
This project uses `clang-format` with LLVM-based style. Before committing:
```bash
clang-format -i c_code_simulation/*.c c_code_simulation/*.h
```

### Commit Guidelines
- Keep commits small and focused
- Include tests with code changes
- Use descriptive commit messages:
  - `feat: add support for 3D convolution`
  - `fix: handle edge case in extract_windows`
  - `test: add boundary tests for matrix_multiply`
  - `docs: update build instructions`

## Submitting Changes

1. Ensure all tests pass: `make -C c_code_simulation test`
2. Ensure code is formatted: `make -C c_code_simulation lint`
3. Push your branch and open a Pull Request
4. Describe your changes and link any related issues

## Reporting Issues

Please use GitHub Issues to report bugs or request features. Include:
- A clear description of the problem
- Steps to reproduce
- Expected vs actual behavior
- Your environment (OS, GCC version)
