
Simple Restful API Webservice

## How to use

- Download this project
- Install php or xampp
- Import simple-restapi-webservice/sql files here/simple-restful-api-webservice.sql to mysql database
- Open command prompt
- Go to the project folder
- Run command : php artisan serve, it will show server_url
- Test following url using postman (will responded with $accessToken)
    - server_url/api/login
    - server_url/api/register

- Test following url using postman and headers (Authorization : Bearer + $accessToken, Content-Type : application/x-www-form-urlencoded, Accept : application/json)
    - server_url/api/details
    - server_url/api/updateUser
    - server_url/api/deleteUser
    - server_url/api/logout

