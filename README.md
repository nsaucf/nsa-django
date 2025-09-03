# NSA Django Website
To get started, run the `start.sh` script or `start.bat` if you're on Windows. 
- This will get your env set up, download the requirements, and then start the app locally.

### Components of the website
---
1. Cloudflare
    - the `nsaucf.org` dns is through cloudflare
2. Heroku
    - Heroku is our CI/CD, so any changes you make here you will have to also deploy to Heroku.
3. Github
    - Update source code in here as you make changes.

### Useful commands
---
1. `heroku login` to access the Heroku CLI (necessary)
2. `git push heroku main` this will push your LOCAL main branch to Heroku's servers.
3. `python manage.py runserver` to start the web app locally.
4. `python manage.py createsuperuser` to make a superuser to access the admin page.
5. `python manage.py tailwind build` to build the django-tailwind module.
6. `python manage.py makemigrations` and `python manage.py migrate` if you ever change the models, you need to run makemigrations and then migrate.