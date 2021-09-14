create-container:
	docker network create nicon-network
	docker volume create nicon-docker-certs-ca
	docker volume create nicon-docker-certs-client
	docker run --privileged -d \
    		--network nicon-network --network-alias docker \
    		-e DOCKER_TLS_CERTDIR=/certs \
    		-v nicon-docker-certs-ca:/certs/ca \
    		-v nicon-docker-certs-client:/certs/client \
    		example
