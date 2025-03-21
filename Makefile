initial-setup:
	curl -fsSL https://pyenv.run | bash
sync-env:
	pip install --upgrade pip
	pip install torch==2.4.0
	pip install torchaudio==2.4.0
	pip install torchmetrics==1.4.2
	pip install torchvision==0.19.0
	pip install wheel
	pip install flash-attn==2.7.3 --no-build-isolation
	pip install -r virtual_env_req.txt

rebuild-env:
	pyenv versions | grep "3.11.9" || env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.11.9
	pyenv uninstall -f immunoLogic
	pyenv virtualenv 3.11.9 immunoLogic

