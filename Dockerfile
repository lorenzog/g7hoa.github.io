# build with:
# docker build -t jekyll .
# run with:
# docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll   -it -p 127.0.0.1:4000:4000 jekyll
FROM jekyll/jekyll
COPY Gemfile /srv/jekyll
WORKDIR /srv/jekyll
RUN jekyll build
CMD jekyll s
