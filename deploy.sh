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
# 推送静态文件到githubPage https://github.com/mywebc/mywebc.github.io.git git@github.com:mywebc/mywebc.github.io.git
cd public
git init
git remote add origin https://github.com/mywebc/mywebc.github.io.git
git add . 
git commit -m "add comment"
git pull origin master 
# git push origin master
git push -u origin master -f # 强制推送到远程
# 退出
cd ../
# 删除public
rm -rf public
