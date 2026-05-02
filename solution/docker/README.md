# ICCAD26 Contest: Containers

## Container

The intention of this container is to provide a consistent interactive environment for development and evaluation. It is based on Ubuntu 24.04 and contains:
- OpenROAD - Binary installation with sources at `/OpenROAD` (Commit `7559f9664a6561cc277e4ec8161b742573e7d521`)
    - This version is patched to support the [evaluator](../scripts/evaluation.tcl), see [`ord.patch`](ord.patch) or [this repository](https://github.com/sakundu/OpenROAD/tree/ispd26) if you wish to build your own version.
- OpenROAD-Flow-Scripts (commit `26b521c49218eb10f4274d782e420cdc824adbc3`)
- Conda 25.7.0 (Miniconda)
- Miscellaneous tools including Yosys, abc.


### future install list
- conda env for the development with the api Openai or Anthropic
- claw-code and rust

- RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
- git clone https://github.com/ultraworkers/claw-code
- cd claw-code/rust
- cargo build --workspace
- export ANTHROPIC_API_KEY="sk-ant-..."

/model claude-haiku-4-5-20251001

# Docker Workflow

Use the prebuilt contest image to get a consistent ICCAD26 environment.

## Quick start
```bash
# from repo root
bash solution/docker/get_into_docker.sh
```
This script runs:
```
docker run -it --rm -v ${PWD}:/ICCAD26-Contest cada-2:1.0
```
- `-it`: interactive shell.
- `--rm`: container is removed on exit.
- `-v ${PWD}:/ICCAD26-Contest`: mounts your repo into the container.
- `cada-2:1.0`: contest image with required tooling on lab2312 server.

## Manual run (if script not executable)
```bash
docker run -it --rm -v "$(pwd)":/ICCAD26-Contest cada-2:1.0
```

## Notes
- Work inside `/ICCAD26-Contest` in the container; changes persist to your host.
- Exit the shell to stop and remove the container.
