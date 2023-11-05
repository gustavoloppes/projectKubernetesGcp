echo "creating images..."

docker build -t gustavoloppes/projec-backend-php:1.0 backend/.
docker build -t gustavoloppes/projec-db-mysql:1.0 db/.

echo "push images..."

docker push gustavoloppes/projec-backend-php:1.0
docker push gustavoloppes/projec-db-mysql:1.0

echo "creating services..."

kubectl apply -f ./services.yml

echo "creating deplyment..."

kubectl apply -f ./deployment.yml