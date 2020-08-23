PATH="/home/smart/Code"
SSH_PATH="git@github.uio.no:"

# Example of ssh path: git@github.uio.no:sanders/IN2040.git 

mapfile -t repos < ./uio/repos.txt

for repo in "${repos}"
do
    git clone $SSH_PATH/$repo.git $PATH/$repo
    echo "cloned: ${SSH_PATH}/${repo}.git -> ${PATH}/${repo}"
done

echo "Done cloning uio repos"