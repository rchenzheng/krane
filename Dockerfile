FROM ruby:2.5
ENV KRANE_VERSION=1.1.3
RUN git clone --branch v${KRANE_VERSION} -q https://github.com/Shopify/krane && \
  cd krane && \
  gem build --no-verbose krane.gemspec && \
  gem install --no-verbose krane-${KRANE_VERSION}.gem --quiet
ENTRYPOINT ["krane"]
