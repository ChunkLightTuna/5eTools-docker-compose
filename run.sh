apk add --no-cache git


if [ -z "$(ls -A "$REPO")" ]; then
  git clone https://github.com/"$ORG"/"$REPO".git 
fi

cd "$REPO"

python3 -m http.server "$PORT"

