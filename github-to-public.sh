# Get a token from Github: user picture (top right): Settings: Developer settings (left panel at bottom).
# Make a personal access token. Give it access to the repo you want, specifically.
# Under repository permissions, give it write access to Administration
# Replace that Token where it says <YOUR-TOKEN>

# Now, replace my repo with your own.
# Then schedule this.

curl -L \
  -X PATCH \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer YOUR-TOKEN"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/stucka/github-to-public \
  -d '{"private":false}'