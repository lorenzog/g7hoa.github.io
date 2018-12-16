docker build -t github .
# docker run  --rm --label=jekyll --volume=$(pwd):/srv/jekyll   -it -p 127.0.0.1:4000:4000 jekyll/jekyll jekyll s
echo "Don't forget sudo iptables -A OUTPUT -o docker0 -j ACCEPT ..."
docker run  --rm --label=jekyll --volume=$(pwd):/srv/jekyll   -it -p 127.0.0.1:4000:4000 github 
