#tag=$(date +%Y-%m-%d-%H-%M)
tag=$(git rev-parse --abbrev-ref HEAD)
echo $tag
docker build -t raxhid/admin:$tag .
#docker login -u raxhid -p tfc@30mcl
#teting secrete file and login
cat password.txt | docker login -u raxhid --password-stdin
docker push raxhid/admin:$tag
echo "All OK"
#echo "done with build and pushed images to the repository"
echo "Message changed"

