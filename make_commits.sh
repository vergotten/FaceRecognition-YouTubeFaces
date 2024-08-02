# Get the list of all changed files
files=$(git diff --name-only)

# Loop over each file
for file in $files
do
  # Stage the file
  git add $file

  # Commit the file
  git commit -m "Update $file"
done

# Get the list of all untracked files
untracked_files=$(git ls-files --others --exclude-standard)

# Loop over each untracked file
for file in $untracked_files
do
  # Stage the file
  git add $file

  # Commit the file
  git commit -m "Add $file"
done
