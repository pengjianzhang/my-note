# git notes

## git reset
git reset --hard COMMIT-ID
git push  --force


## git update
yum install zlib-devel

wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.36.0.tar.xz
xz -d git-2.36.0.tar.xz
tar -xvf git-2.36.0.tar
cd git-2.36.0
./configure --prefix=/usr/

make
make install

## git ssh key

cd ~/.ssh
ssh-keygen -t rsa -C "email-or-some-id"


## config

git config  user.email pengjianzhang@gmail.com
git config  user.name "Jianzhang Peng"

