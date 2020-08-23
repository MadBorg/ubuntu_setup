# Making all .sh files executable
find . -type f -iname "*.sh" -exec chmod +x {} \;

# Running setup

# - Updating apt
exec ./apt_setup/aptSetup.sh 

# - setting username and email for git
exec ./github/gitMAdBorgConfig.sh &
# - Setup python
exec ./python/setup.sh &
# - clone repos
exec ./uio/cloneRepos.sh &
# - Install rust
exec ./rust/setup.sh &