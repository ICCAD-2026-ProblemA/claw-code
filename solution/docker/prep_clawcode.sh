apt-get -y update

# rust
apt-get -y install curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
# claw-code
cd /
git clone https://github.com/ultraworkers/claw-code
cd /claw-code/rust
cargo build --workspace