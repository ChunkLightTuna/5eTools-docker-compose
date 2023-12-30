apk add --no-cache git


if [ -z "$(ls -A "$DIR")" ]; then
  git clone https://github.com/"$REPO"/"$DIR".git 
fi

cd "$DIR"

python3 -m http.server $PORT

