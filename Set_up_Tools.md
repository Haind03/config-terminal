# Setting Ubuntu-Wsl

## Py-env

- Update Ubuntu system.
  ```
  sudo apt-get update -y && sudo apt-get dist-upgrade
  ```
- Install các gói cần thiết.

  ```
  sudo apt install -y build-essential libssl-dev zlib1g-dev libncurses5-dev libnss3-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
  ```
- Thêm kho lưu trữ deadsnakes PPA (cung cấp các phiên bản Python mới): Kho lưu trữ này có chứa các phiên bản Python mới hơn cho Ubuntu:

  ```
  sudo add-apt-repository ppa:deadsnakes/ppa
  sudo apt update
  ```
- Install python
  ```
  sudo apt install python3.12
  ```
- Cập nhật python3 để trỏ đến phiên bản Python mới: Ubuntu mặc định sử dụng python3 để trỏ đến phiên bản Python 3 có sẵn. Bạn có thể cập nhật phiên bản Python được sử dụng khi gõ python3 (không khuyến khích dùng lệnh này vì có thể ảnh hưởng đến hệ thống.
  ```
  sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1
  ```
- Check install.
  ```
  python3 --version
  ```
- Bạn cũng có thể cài đặt `pip` và `venv` cho phiên bản Python mới bằng lệnh:

  ```
  sudo apt install python3.12-venv
  ```
- Ví dụ:
  ```
  sudo apt install python3.12 python3.12-venv
  python3.12 -m venv pwnenv
  source ~/pwnenv/bin/activate
  python3 -m pip install --upgrade pip
  ```

- Sau khi cài xong thêm vào `~/.profile`
  ```
   ⚡haind ❯❯ cat ~/.profile

  if [ -n "$BASH_VERSION" ]; then
      # include .bashrc if it exists
      if [ -f "$HOME/.bashrc" ]; then
          . "$HOME/.bashrc"
      fi
  fi
  
  if [ -d "$HOME/bin" ] ; then
      PATH="$HOME/bin:$PATH"
  fi
  
  if [ -d "$HOME/.local/bin" ] ; then
      PATH="$HOME/.local/bin:$PATH"
  fi
  source ~/pwnenv/bin/activate
  eval "$(oh-my-posh init bash --config /home/haind/terminal/montys.omp.json)"
  
  alias aslrcheck='cat /proc/sys/kernel/randomize_va_space'
  
  alias aslroff="echo 0 | sudo tee /proc/sys/kernel/randomize_va_space"
  
  alias aslron="echo 2 | sudo tee /proc/sys/kernel/randomize_va_space"
  ```

## Tools and Libraries
- Tools
  ```
  sudo apt update
  sudo apt install unzip
  sudo apt install sshpass
  sudo apt install rar
  sudo apt install golang
  go env GOPATH
  export PATH=$PATH:/home/haind/go/bin
  go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
  sudo snap install sqlmap
  sudo apt install dirsearch
  sudo apt install upx-ucl
  sudo apt update && sudo apt upgrade && sudo apt install sagemath
  ```
- Thêm vào `~/.profile` `export PATH=$PATH:/home/haind/go/bin`
  
- Libraries 
  ```
  python3 -m pip install pwntools pathlib2 keystone-engine unicorn capstone ropper ipython z3-solver
  ```

## Docker
- Cài các gói docker.
  ```
  sudo snap install docker
  ```
