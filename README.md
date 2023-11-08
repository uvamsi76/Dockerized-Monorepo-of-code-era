
# Dockerized-Monorepo-of-codes-era

It is a end to end tried to be clone of coursera.Where you can signin,signup,purchase a course, publish a course if you are admin.


# Tech and Libraries used
## Frontend
    * Next.js
    * mui
    * Recoil
## Backend 
    * Mongodb
    * Mongoose
    * Express 
    * zod
## Deployment
    Aws EC2
    Docker
# For building and Starting locally

```bash
  yarn install
  yarn build
  yarn start
```
## For starting Backend alone
```bash
  yarn start:express
```
## For starting Frontend alone
```bash
  yarn start:next
```
## For starting Backend using Docker
```bash
  yarn start-docker-backend"
```
## For starting Frontend using Docker
```bash
  yarn start-docker-next"
```
## Deployment

The deployment of this project is done using Github CI/CD. In work flows I ran deploy.sh in particular app which moves docker file to root and runs docker build and starts it in appropriate port.  

## Authors

- [@uvamsi76](https://github.com/uvamsi76)
