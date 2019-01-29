
Simple Restful API Webservice

## How to use

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

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

