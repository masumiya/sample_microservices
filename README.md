# sample_microservices


1. `cd /path/to/sample_microservices`
2. `docker-compose up -d`
3. `docker-compose run api1 rails db:seed`
4. `curl -i -X POST --url http://localhost:8001/apis/ --data 'name=api1' --data 'upstream_url=http://api1:3000' --data 'request_path=/api1' --data 'strip_request_path=true'`  
   if kong failed then `docker-compose restart kong`.
5. Go to [http://localhost/members/](http://localhost/members/)
