sudo apt-get update

# apt-get dependencies
sudo apt-get install -y build-essential chrpath git-core libssl-dev libfontconfig1-dev libxft-dev libxml2 libxml2-dev libxslt1-dev

# git (sometimes necessary)
sudo apt-get install -y git

# postgres
sudo /usr/sbin/update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
sudo apt-get install -y postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser vagrant
sudo -u postgres createdb -O vagrant activerecord_unittest
sudo -u postgres createdb -O vagrant activerecord_unittest2

# curl
sudo apt-get install -y curl

# rbenv
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
echo `
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi
` >> ~/.bashrc
source ~/.bashrc
rbenv install 2.1.2

# bundler, nodejs, npm
sudo gem install -y bundler
sudo apt-get install -y nodejs
sudo apt-get install -y npm

# phantomjs
cd ~
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 1.9
./build.sh

echo 'all set, rock on! - greetings Jobo.'
