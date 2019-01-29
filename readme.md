
Simple Restful API Webservice

## How to use

- Download this project
- Install php or xampp
- Import simple-restapi-webservice/sql files here/simple-restful-api-webservice.sql to mysql database
- Open command prompt
- Go to the project folder
- Run command : php artisan serve, it will show server_url
- Test following url using postman (will responded with $accessToken)
    - server_url/login
    - server_url/register

- Test following url using postman and headers (Authorization : Bearer + $accessToken, Content-Type : application/x-www-form-urlencoded, Accept : application/json)
    - server_url/details
    - server_url/updateUser
    - server_url/deleteUser
    - server_url/logout

