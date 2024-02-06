# --------------------------------- general arguments: help all tar clean

help:
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'

publish: ## publish to github (AFTER you have done git add; git commit)
	git push origin main
