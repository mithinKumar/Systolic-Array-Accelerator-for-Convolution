# Build stage
FROM gcc:13 AS builder

WORKDIR /app
COPY c_code_simulation/ ./c_code_simulation/

# Build all targets including test_runner
RUN make -C c_code_simulation all

# Test stage
FROM builder AS tester
RUN make -C c_code_simulation test

# Runtime stage
FROM debian:bookworm-slim AS runtime

WORKDIR /app
COPY --from=builder /app/c_code_simulation/complete ./complete
COPY --from=builder /app/c_code_simulation/preprocessing ./preprocessing
COPY --from=builder /app/c_code_simulation/demo ./demo
COPY --from=builder /app/c_code_simulation/test_runner ./test_runner

# Health check verifies the test suite executes successfully
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD ./test_runner || exit 1

CMD ["./demo"]
