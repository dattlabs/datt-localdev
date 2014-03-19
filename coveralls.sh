COVERALLS_URL='https://coveralls.io/api/v1/jobs'
shcov ./build
curl -F 'json_file=@cov/coveralls.json' "$COVERALLS_URL"
