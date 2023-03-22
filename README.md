# ControlPlus.pro

ControlPlus.pro is a personal financial management tool in Portuguese. It provides users with a straightforward and responsive platform to manage their tasks and finances.

## Features

- Task management:
  - Create, edit, and delete tasks.
  - Mark tasks as done or unmark them.
  - Rearrange tasks using a mouse or fingers on the task list page.
  - Search for specific tasks with the search bar.
  - Task entries contain a description, date, and time.

- Financial management:
  - Manage receivables (entradas) and payables (saídas).
  - Search for finance entries with a search bar.
  - Create, edit, and delete financial entries.
  - Separate pages for receivables and payables, each with its own entries.
  - Displays for the total of receivables or payables and the overall total (receivables - payables).
  - Visual cues for the user's financial status (black for positive balance, blinking red for negative balance).

- Fully responsive design for tablets and mobile devices.

This project was the capstone project for a trio during Le Wagon São Paulo's bootcamp, between July and September 2022.

## Installation and Setup

This web application can be accessed directly at [https://controlplus.pro](https://controlplus.pro). If you want to set up the project locally or contribute to its development, follow these steps:

### Prerequisites

1. Ruby 3.1.2
2. Rails 7.0.3.1
3. Node.js 16.x.x
4. Yarn 1.22.19
5. PostgreSQL

### Dependencies

In addition to the prerequisites, you'll need to install the following external libraries or packages:

- [Devise](https://github.com/heartcombo/devise)
- [Simple Form](https://github.com/heartcombo/simple_form)

### Configuration

No special configuration is required for this application.

### Running the project locally

To run the project locally, follow these steps:

1. Clone the repository to your local machine: `git clone https://github.com/your_username/your_project.git`
2. Change into the project directory: `cd your_project`
3. Install the required Ruby gems, including Devise and Simple Form: `bundle install`
4. Install the required JavaScript packages: `yarn install`
5. Set up the database: `rails db:create db:migrate db:seed`
6. Start the rails server: `rails s`

Now you can access the application in your web browser at `http://localhost:3000`

### Deployment

The project is deployed to Heroku. To deploy your own version of the project, follow these steps:

1. Install the Heroku CLI and log in with your Heroku account: `heroku login`
2. Create a new Heroku app: `heroku create your-app-name`
3. Set up your app's environment variables in Heroku:

    ```bash
    heroku config:set RAILS_MASTER_KEY=`cat config/master.key`
    ```

4. Deploy your app to Heroku: `git push heroku main`
5. Run database migrations on Heroku: `heroku run rails db:migrate`

Your application should now be live on Heroku.

If you encounter any issues, please refer to the [Heroku documentation](https://devcenter.heroku.com/articles/getting-started-with-rails6) for further guidance.
