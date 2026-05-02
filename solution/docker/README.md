# ICCAD26 Contest: Environment Setup

## Overview

This document describes the contest environment — a Docker container based on **Ubuntu 24.04** that provides a consistent setup for development and evaluation.

---

## Container Contents

| Tool | Details |
|---|---|
| **OpenROAD** | Binary install; sources at `/OpenROAD` (commit `7559f9664a6561cc277e4ec8161b742573e7d521`). see [this repo](https://github.com/sakundu/OpenROAD/tree/ispd26) to build your own. |
| **OpenROAD-Flow-Scripts** | Commit `26b521c49218eb10f4274d782e420cdc824adbc3` |
| **Conda** | Version 25.7.0 (Miniconda) |
| **Yosys** | Open-source logic synthesis tool |
| **abc** | Sequential logic synthesis and verification |

---

## claw-code

`claw-code` is an LLM-assisted agent included in the container for contest tasks. To use it:

```bash
cd /claw-code/rust
export ANTHROPIC_API_KEY="sk-ant-..."

# start to claw-code
./target/debug/claw

# change to haiku model
/model claude-haiku-4-5-20251001
```

---

## Docker Workflow

### Quick Start

From the repo root, run:

```bash
bash solution/docker/get_into_docker.sh
```

This script runs the following command:

```bash
docker run -it --rm -v ${PWD}:/ICCAD26-Contest cada-2:1.2
```

### Manual Run

If the script is not executable, run directly:

```bash
docker run -it --rm -v "$(pwd)":/ICCAD26-Contest cada-2:1.2
```

### Docker Flag Reference

| Flag | Description |
|---|---|
| `-it` | Opens an interactive shell |
| `--rm` | Removes the container on exit |
| `-v ${PWD}:/ICCAD26-Contest` | Mounts your local repo into the container |
| `cada-2:1.2` | The contest image hosted on the `lab2312` server |

---

## Notes

- Do all your work inside `/ICCAD26-Contest` within the container — changes there will persist to your host machine.
- Exit the shell to stop and remove the container automatically.
