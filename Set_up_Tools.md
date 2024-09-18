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
  sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.x12 1
  ```
- Check install.
  ```
  python3 --version
  ```
- Bạn cũng có thể cài đặt `pip` và `venv` cho phiên bản Python mới bằng lệnh:

  ```
  sudo apt install python3.xx-venv
  ```
- Ví dụ:
  ```
  sudo apt install python3.8 python3.8-venv
python3.8 -m venv pwnenv
source ~/pwnenv/bin/activate
python3 -m pip install --upgrade pip
  ```
## Docker
- Cài các gói docker.
  ```
  sudo snap install docker
  ```
