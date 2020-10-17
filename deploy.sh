# 删除public
rm -rf public/
# 生成public
hugo
# 备份博客内容
git add .
git commit -m "blog backup"
git push
# 推送静态文件到githubPage
cd public
git add .
git commit -m "blog update"
git push
