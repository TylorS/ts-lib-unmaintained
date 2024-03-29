npm start
node ./node_modules/.bin/commitizen init cz-conventional-changelog
git init
git remote add origin https://github.com/{{GITHUB_USERNAME}}/{{package_name}}
git add -A
npm run commit
git tag -f v0.0.0
git checkout -b develop
git push origin --all
git push origin --tags


USER={{GITHUB_USERNAME}}

echo -n "Github Password: "
read PASS


REPO_USER={{GITHUB_USERNAME}}
REPO_NAME={{package_name}}

# Delete default labelsf
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/help%20wanted"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix"

# Create new labels
## Issue types
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Type: Discussion", "color": "ffff00"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Type: Bug", "color": "ff0000"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Type: Feature Suggestion", "color": "bbdefb"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Type: Breaking Suggestion", "color": "76ff03"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Statuses
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Status: Help Wanted", "color": "2e7d32"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Status: In Progress", "color": "f50057"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Weights
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Weight: 1 - Maybe", "color": "eeeeee"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Weight: 2 - Could", "color": "aaaaaa"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Weight: 3 - Should", "color": "777777"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Weight: 4 - Must", "color": "000000"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

## Resolutions
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Resolution: Cannot Reproduce", "color": "7b1fa2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Resolution: Duplicate Issue", "color": "7b1fa2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Resolution: Bug Fixed", "color": "7b1fa2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Resolution: Invalid", "color": "7b1fa2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "Resolution: Works As Expected", "color": "7b1fa2"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
