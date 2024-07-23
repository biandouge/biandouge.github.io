#!/bin/sh

# 如果有错误，则中止脚本
set -e

# 构建项目
hugo # 如果使用自定义配置文件，请使用 hugo -d <config-file>

# 进入生成的文件夹
cd public

# 如果使用自定义域名
 echo 'www.biandouge.com' > CNAME

git init
git add -A
git commit -m 'Deploy to GitHub Pages'

# 部署到 https://<biandouge>.github.io/<biandouge.github.io>
git push -f https://github.com/<biandouge>/<biandouge.github.io>.git main:gh-pages

cd -

