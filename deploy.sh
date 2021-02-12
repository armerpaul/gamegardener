git checkout public
git pull
hugo -D
mv CNAME public/CNAME
rm -rf `ls | grep -v public`
mv public/* .
git add .
git commit -am "Deploying to production on `date`"
git push
git checkout master
