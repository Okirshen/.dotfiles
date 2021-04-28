cd "$(dirname "${BASH_SOURCE}")";

echo $BASH_SOURCE

rsync --exclude ".git/" \
	--exclude "bootstrap.sh" \
	--exclude "README.md" \
	-avh --no-perms . ~;
source ~/.zshrc;