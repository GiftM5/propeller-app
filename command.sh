#Step 1 Continued
Download the GitHub CLI and authenticate it with your GitHub account.
# for Windows, you can use the following command to install GitHub CLI:
winget install --id GitHub.cli
gh auth login


# Step 1
npx create-react-app propeller-app

#Step 2
cd propeller-app

# Step 2(Contiued)
git init
git add .
git commit -m "Initial commit(Created React app with create-react-app)"

# Step 3
gh repo create propeller-app --public --source=. --remote=origin --push

# Step 4
git checkout -b update_logo

sed -i "" 's|img src={logo}|img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|g' src/App.js
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App.

# Step 6
git add src/App.js
git commit -m "Made some changes to App.js: Updated logo and link"
git push origin update_logo

# Step 7
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaced logo and updated link to Propeller Aero DirtMate"

# Step 8
gh pr merge --merge

# REPO_URL https://github.com/GiftM5/propeller-app/tree/master