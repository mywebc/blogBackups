# source ./deploy.sh 一键部署和备份博客
# public不能删除（包含.git）
# 生成public(替换)
hugo
# 备份博客内容
git add .
git commit -m "blog backup"
git push origin
# 推送静态文件到githubPage
cd public
# git init
# git remote add origin git@github.com:mywebc/mywebc.github.io.git
git add .
git commit -m "blog update"
git pull
git push
# 退出
cd ../
