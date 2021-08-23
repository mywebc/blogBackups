# 重新拉取主题 
# mkdir themes => cd themes => git clone https://github.com/liuzc/LeaveIt.git => hugo serve 即可

# source ./deploy.sh 一键部署和备份博客
# public不能删除（包含.git）
# 生成public(替换)
hugo
# 备份博客内容
git add . -f
git commit -m "add comment"
git push origin
# 推送静态文件到githubPage
cd public
# git init
# git remote add origin git@github.com:mywebc/mywebc.github.io.git
git add . -f
git commit -m "add comment"
git pull origin master
git push origin master
# 退出
cd ../
