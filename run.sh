apk add --no-cache git


if [ -n "$(ls -A "/$REPO")" ]; then
  cd /"$REPO"
  if git remote -v | grep origin | grep -q "https://github.com/$ORG/$REPO.git"; then
    echo "Repo unchanged"
  else
    rm -r * .*
  cd /
  fi
fi

if [ -z "$(ls -A /"$REPO")" ]; then
  git clone https://github.com/"$ORG"/"$REPO".git 
fi

cd /"$REPO"

python3 -m http.server "$PORT"

