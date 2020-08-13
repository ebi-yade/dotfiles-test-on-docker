default:
	docker build docker/default/ -t dotfiles-test && \
	docker run -w /root -it dotfiles-test:latest $(SHELL)
ja-jp:
	docker build docker/ja_jp/ -t dotfiles-test && \
	docker run -w /root -it dotfiles-test:latest $(SHELL)
specify-shell:
	cd docker/other_shell && \
	cp Dockerfile.bak Dockerfile && \
	sed -i.bak -e "s/shellNameHere/$(SHELL)/g" Dockerfile && \
	cd ../.. && \
	docker build docker/other_shell/ -t dotfiles-test
	docker run -w /root -it dotfiles-test:latest $(SHELL)

