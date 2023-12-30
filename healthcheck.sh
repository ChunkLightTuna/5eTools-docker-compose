if ! command -v git; then
  exit 0
fi

cd $DIR

commit_before=$(git log -n 1)
git pull
commit_after=$(git log -n 1)

if [[ "$commit_before" != "$commit_after" ]]; then
  kill -s SIGKILL 1
fi

