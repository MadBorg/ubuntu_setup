# Making all .sh files executable
find . -type f -iname "*.sh" -exec chmod +x {} \;

# Running setup

# - Updating apt
./apt_setup/aptSetup.sh 
# - setting username and email for git
./github/gitMAdBorgConfig.sh 
# - Setup python
./python/setup.sh 
# - clone repos
./uio/cloneRepos.sh 
# - Install rust
./rust/setup.sh 

echo "DONE!!"