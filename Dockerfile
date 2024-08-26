# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

ARG PYTHON_VERSION=3.11.9
FROM python:${PYTHON_VERSION}-slim AS base

# Prevents Python from writing pyc files.
ENV PYTHONDONTWRITEBYTECODE=1

# Keeps Python from buffering stdout and stderr to avoid situations where
# the application crashes without emitting any logs due to buffering.
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Create a non-privileged user that the app will run under.
# See https://docs.docker.com/go/dockerfile-user-best-practices/
ARG UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    appuser

# Download dependencies as a separate step to take advantage of Docker's caching.
# Leverage a cache mount to /root/.cache/pip to speed up subsequent builds.
# Leverage a bind mount to requirements.txt to avoid having to copy them into
# into this layer.
# RUN --mount=type=cache,target=/root/.cache/pip \
#     --mount=type=bind,source=requirements.txt,target=requirements.txt \
#     python -m pip install -r requirements.txt
ARG TRESTLE_VERSION=3.4.0
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install "compliance-trestle==${TRESTLE_VERSION}"

# Switch to the non-privileged user to run the application.
USER appuser

COPY --chown=appuser:appuser --chmod=744 entrypoint.sh /app/entrypoint.sh
COPY --chown=appuser:appuser templates /app/templates/
COPY *.md /app/
COPY scripts /app/bin

ENV PATH="/app/bin:${PATH}"
# Allow for skipping automatic install of trestle-config.yaml
ENV SKIP_TRESTLE_CONFIG=false
ENTRYPOINT ["/app/entrypoint.sh"]

# Run the application.
CMD ["trestle", "version"]
