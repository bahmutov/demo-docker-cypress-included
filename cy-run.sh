set e+x

echo "Running Cypress e2e tests headlessly"

# run Cypress headlessly inside a Docker container
#  -it = interactive terminal
#  -v $PWD:/e2e = map current folder to /e2e inside the container
#  -w /e2e = set working directy to /e2e
docker run -it -v $PWD:/e2e -w /e2e cypress/included:3.2.0
