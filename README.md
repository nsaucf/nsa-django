# NSA Django Website

To get started, clone the repo and `cd` into it. Then run the `start.sh` script (macOS/Linux) or `start.bat` (Windows).  
- This will create a virtual environment named `env`, install requirements, and start the app locally.

---

### Infrastructure
1. **Cloudflare**  
   - `nsaucf.org` DNS is managed through Cloudflare.  

2. **Heroku**  
   - Heroku handles CI/CD. Any changes you commit here must also be deployed to Heroku.  

3. **GitHub**  
   - All source code lives here. Update as you make changes.

---

### Useful Commands
- `heroku login` — Log in to the Heroku CLI (required for deployments).  
- `git push heroku main` — Deploy your **local `main` branch** to Heroku.  
- `python manage.py runserver` — Start the app locally.  
- `python manage.py createsuperuser` — Create a superuser account to access the admin panel.  
- `python manage.py tailwind build` — Build the Django Tailwind module (only if CSS/JS was changed).  
- `python manage.py makemigrations && python manage.py migrate` — Run after modifying models.  

---

### Contributing Workflow
1. **Update your local repo**  
   ```bash
   git pull origin main
   ```

2. **Create a feature branch (recommended)**

   ```bash
   git checkout -b feature/<short-description>
   ```

3. **Make changes and test locally**

   ```bash
   python manage.py runserver
   ```

4. **Commit your changes**

   ```bash
   git add .
   git commit -m "Your clear commit message"
   ```

5. **Push to GitHub**

   ```bash
   git push origin feature/<short-description>
   ```

6. **Merge into `main`**

   * Open a Pull Request in GitHub (preferred), or
   * Merge locally and push:

     ```bash
     git checkout main
     git pull origin main
     git merge feature/<short-description>
     git push origin main
     ```

7. **Deploy to Heroku**

   ```bash
   git push heroku main
   ```

---

### Notes

* Always pull the latest `main` before starting new work.
* Use feature branches to keep history clean.
* Only deploy `main` to Heroku.
