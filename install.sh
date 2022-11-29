apt update -y

apt install wget debian-archive-keyring dirmngr -y

wget https://gist.githubusercontent.com/A9FM/d2a11fd63f9ab9631da98b92f635c69a/raw/c3d2321810117633e25f3d4925e56d0c277e0ae1/sources.list
mv sources.list  /etc/apt/sources.list.d/debian.list

gpg --keyserver keyserver.ubuntu.com --recv 648ACFD622F3D138
gpg --export --armor 648ACFD622F3D138 | sudo apt-key add --

gpg --keyserver keyserver.ubuntu.com --recv 0E98404D386FA1D9
gpg --export --armor 0E98404D386FA1D9 | sudo apt-key add --

gpg --keyserver keyserver.ubuntu.com --recv DCC9EFBF77E11517
gpg --export --armor DCC9EFBF77E11517 | sudo apt-key add --

apt update -y
