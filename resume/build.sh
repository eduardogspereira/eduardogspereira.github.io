#!/usr/bin/zsh

set -e

IMAGE="latex-env"

# Build image only if not present
if ! docker image inspect "$IMAGE" > /dev/null 2>&1; then
  echo "[+] Building Docker image..."
  docker build -t "$IMAGE" .
fi

echo "[+] Compiling resume..."
docker run --rm -v "$PWD":/data "$IMAGE" make

echo "[✓] Done."
echo "Output: resume.pdf"