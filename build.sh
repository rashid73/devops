#tag=$(date +%Y-%m-%d-%H-%M)
tag=$(echo $GIT_BRANCH   | sed -e "s|origin/||g")-${BUILD_NUMBER}
echo $tag
docker build -t raxhid/server:$tag .
#docker login -u raxhid -p tfc@30mcl
#teting secrete file and login
cat password.txt | docker login -u raxhid --password-stdin
docker push raxhid/server:$tag
echo "All OK"
#echo "done with build and pushed images to the repository"
echo "Message changed"
# checking
