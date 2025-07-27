mkdir -p MultiBranchFeatureDevelopmentAndHotfixManagement
cd MultiBranchFeatureDevelopmentAndHotfixManagement

git init
echo "Initial content" > file.txt
git add file.txt
git commit -m "Initial commit with file.txt"
git checkout -b feature-auth
echo "Authentication feature implementation" >> auth_file.txt
git add auth_file.txt
git commit -m "Implement authentication feature in auth_file.txt"
echo "Authentication feature tests" >> auth_file.txt
git add auth_file.txt
git commit -m "Add tests for authentication feature in auth_file.txt"
git checkout -b  feature-dashboard
echo "Dashboard feature implementation" >> dashboard_file.txt
git add dashboard_file.txt
git commit -m "Implement dashboard feature in dashboard_file.txt"
echo "Dashboard feature tests" >> dashboard_file.txt
git add dashboard_file.txt
git commit -m "Add tests for dashboard feature in dashboard_file.txt"
git checkout main
echo "Bug content in main" >> file.txt
git add file.txt
git commit -m "Add bug content in main branch"
git checkout -b hotfix-security
echo "Security hotfix implementation" >> file.txt
# edit file.txt to fix security issue
git add file.txt
git commit -m "Implement security hotfix in file.txt"
git checkout main
git merge hotfix-security
git checkout feature-auth
# Resolve any conflicts if they arise
git rebase main
# Resolve any conflicts if they arise
# nano file.txt
#git add file.txt
#git rebase --continue
git checkout feature-dashboard
git rebase main
# Resolve any conflicts if they arise
# nano file.txt
#git add file.txt
#git rebase --continue
git checkout main
git merge feature-auth
git merge feature-dashboard
git branch -d feature-auth
git branch -d feature-dashboard
git branch -d hotfix-security
# Add to remote repository
git remote add origin https://github.com/meto-softuni-git/MultiBranchFeatureDevelopmentAndHotfixManagement.git
git push -u origin main





