# Use microsift repo
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ && \
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' && \
rm -f packages.microsoft.gpg && \
sudo apt install apt-transport-https

sudo apt update

# install VS Code
sudo apt install code

# install git
sudo apt install git

# install chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
&& sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb

# install dotnet
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
sudo dpkg -i packages-microsoft-prod.deb && \
rm packages-microsoft-prod.deb

sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0