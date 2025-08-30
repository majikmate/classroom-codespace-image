# Classroom Codespace Image

A multi-architecture [Dev Container](https://containers.dev/) image for
classroom use, published to
[`ghcr.io/majikmate/classroom-codespace-image`](https://github.com/orgs/majikmate/packages/container/classroom-codespace-image).

This image provides a consistent development environment across `linux/amd64`
and `linux/arm64` architectures.

## Included Features

Based on Debian, this image comes with a variety of pre-installed tools and
languages.

### Core Tools

- **GitHub CLI**
- **Docker-in-Docker**

### Languages & Runtimes

- **Go**
- **Java** (OpenJDK, Gradle, Maven, Ant, Groovy)
- **Node.js** (LTS, pnpm, nvm)
- **Deno**
- **Python**
- **Conda & Mamba (Miniforge)**

## Usage

To use this image in your own Dev Container, update your
`.devcontainer/devcontainer.json`:

```json
{
    "name": "My Project",
    "image": "ghcr.io/majikmate/classroom-codespace-image:latest",

    // Add other features or customizations
    "features": {
        // e.g., "ghcr.io/devcontainers/features/rust:1": {}
    }
}
```

This provides a fast and consistent startup experience for GitHub Codespaces or
local Dev Containers.
