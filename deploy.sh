# source ./deploy.sh 一键部署和备份博客
# 删除public
rm -rf public/
# 生成public
hugo
# 备份博客内容
git add .
git commit -m "blog backup"
git push origin
# 推送静态文件到githubPage
cd public
git add .
git commit -m "blog update"
git push origin
# 退出
cd ../
