if ! command -v git; then
  exit 0
fi

cd "/$REPO"

commit_before=$(git log -n 1)
git pull
commit_after=$(git log -n 1)

if [[ "$commit_before" != "$commit_after" ]]; then
  pkill -f "python3 -m http.server $PORT"
fi


