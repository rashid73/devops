tag=$(date +%Y-%m-%d-%H-%M)
echo $tag
docker build -t raxhid/admin:$tag .
docker login -u raxhid -p tfc@30mcl
docker push raxhid/admin:$tag
