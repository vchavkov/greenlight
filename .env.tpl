# Create a Secret Key for Rails
#
# You can generate a secure one through the Greenlight docker image
# with the command.
#
#   docker run --rm bigbluebutton/greenlight:v2 bundle exec rake secret
#
SECRET_KEY_BASE=e9c351f4c9e4fd7e2c6a2c62fb41601e5dba62b38d7ebf5ba4fdaabcd7ddd8cb45581f5b55365454c6a2149c0316a6c00f894eeecd787b8042971baf5c2dd009

# The endpoint and secret for your BigBlueButton server.
# Set these if you are running GreenLight on a single BigBlueButton server.
# You can retrive these by running the following command on your BigBlueButton server:
#
#   bbb-conf --secret
#
BIGBLUEBUTTON_ENDPOINT=http://85.14.20.219/bigbluebutton/
BIGBLUEBUTTON_SECRET=MXpwEkWQkT0TI0FJFlPlipmvZI5zwzcBUzFcfKerHUQ

# Google Login Provider (optional)
#
# For in-depth steps on setting up a Google Login Provider, see:
#
#   https://docs.bigbluebutton.org/greenlight/gl-config.html#google-oauth2
#
# The GOOGLE_OAUTH2_HD variable is used to limit sign-ins to a particular set of Google Apps hosted
# domains. This can be a string with separating commas such as, 'domain.com, example.com' or
# a string that specifies a single domain restriction such as, 'domain.com'.
# If left blank, GreenLight will allow sign-in from all Google Apps hosted domains.
GOOGLE_OAUTH2_ID=
GOOGLE_OAUTH2_SECRET=
GOOGLE_OAUTH2_HD=

# Twitter Login Provider (optional)
#
# Twitter Authentication is deprecated and will be phased out in a future release.

# Microsoft Office365 Login Provider (optional)
#
# For in-depth steps on setting up a Office 365 Login Provider, see:
#
#   https://docs.bigbluebutton.org/greenlight/gl-config.html#office365-oauth2
#
OFFICE365_KEY=
OFFICE365_SECRET=
OFFICE365_HD=

# OAUTH2_REDIRECT allows you to specify the redirect_url passed to oauth on sign in.
# It is useful for cases when Greenlight is deployed behind a Network Load Balancer or proxy
OAUTH2_REDIRECT=

# LDAP Login Provider (optional)
#
# You can enable LDAP authentication by providing values for the variables below.
# Configuring LDAP authentication will take precedence over all other providers.
# For information about setting up LDAP, see:
#
#   https://docs.bigbluebutton.org/greenlight/gl-config.html#ldap-auth
#
#   LDAP_SERVER=ldap.example.com
#   LDAP_PORT=389
#   LDAP_METHOD=plain
#   LDAP_UID=uid
#   LDAP_BASE=dc=example,dc=com
#   LDAP_BIND_DN=cn=admin,dc=example,dc=com
#   LDAP_PASSWORD=password
#   LDAP_ROLE_FIELD=ou
LDAP_SERVER=
LDAP_PORT=
LDAP_METHOD=
LDAP_UID=
LDAP_BASE=
LDAP_BIND_DN=
LDAP_PASSWORD=
LDAP_ROLE_FIELD=

# Set this to true if you want GreenLight to support user signup and login without
# Omniauth. For more information, see:
#
#   https://docs.bigbluebutton.org/greenlight/gl-overview.html#accounts-and-profile
#
ALLOW_GREENLIGHT_ACCOUNTS=true

# To enable reCaptcha on the user sign up, define these 2 keys
# You can obtain these keys by registering your domain using the following url:
#
#  https://www.google.com/recaptcha/admin
#
RECAPTCHA_SITE_KEY=
RECAPTCHA_SECRET_KEY=

# To enable Google Analytics on your site, set this key to the Google Analytics Property Tracking ID
#
#  https://analytics.google.com/analytics/web/
#
GOOGLE_ANALYTICS_TRACKING_ID=

# Set this to true if you want GreenLight to send verification emails upon
# the creation of a new account
#
#   ALLOW_MAIL_NOTIFICATIONS=true
#
# The notifications are sent using sendmail, unless the SMTP_SERVER variable is set.
# In that case, make sure the rest of the variables are properly set.
#
#   SMTP_SERVER=smtp.gmail.com
#   SMTP_PORT=587
#   SMTP_DOMAIN=gmail.com
#   SMTP_USERNAME=<youremail@gmail.com>
#   SMTP_PASSWORD=<yourpassword>
#   SMTP_AUTH=plain
#   SMTP_STARTTLS_AUTO=true
#
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
SMTP_DOMAIN=gmail.com
SMTP_USERNAME=chavkov@gmail.com
SMTP_PASSWORD=q8ac743fqs67
SMTP_AUTH=plain
SMTP_STARTTLS_AUTO=true

# Specify the email address that all mail is sent from
SMTP_SENDER=bbb@assistance.bg

# Prefix for the applications root URL.
# Useful for deploying the application to a subdirectory, which is highly recommended
# if deploying on a BigBlueButton server. Keep in mind that if you change this, you'll
# have to update your authentication callback URL's to reflect this change.
#
#   The recommended prefix is "/b".
#
RELATIVE_URL_ROOT=/b

# Specify which settings you would like the users to configure on room creation
# or edit after the room has been created
# By default, all settings are turned OFF.
#
# Current settings available:
#   mute-on-join: Automatically mute users by default when they join a room
#   require-moderator-approval: Require moderators to approve new users before they can join the room
#   anyone-can-start: Allows anyone with the join url to start the room in BigBlueButton
#   all-join-moderator: All users join as moderators in BigBlueButton
ROOM_FEATURES=mute-on-join,require-moderator-approval,anyone-can-start,all-join-moderator

# Specify the maximum number of records to be sent to the BigBlueButton API in one call
# Default is set to 25 records
PAGINATION_NUMBER=25

# Specify the maximum number of rows that should be displayed per page for a paginated table
# Default is set to 25 rows
NUMBER_OF_ROWS=25

# Specify if you want to display the Google Calendar button
#   ENABLE_GOOGLE_CALENDAR_BUTTON=true|false
ENABLE_GOOGLE_CALENDAR_BUTTON=

# Set the application into Maintenance Mode
#
# Current options supported:
# true: Renders an error page that does not allow users to access any of the features in the application
# false: Application runs normally
MAINTENANCE_MODE=false

# Displays a flash that appears to inform the user of a scheduled maintenance window
# This variable should contain ONLY the date and time of the scheduled maintenance
#
# Ex: MAINTENANCE_WINDOW=Friday August 18 6pm-10pm EST
MAINTENANCE_WINDOW=

# The link to the Report an Issue button that appears on the 500 page and in the Account Dropdown
#
# Defaults to the Github Issues Page for Greenlight
# Button can be disabled by setting the value to blank
REPORT_ISSUE_URL=https://github.com/bigbluebutton/greenlight/issues/new

# Comment this out to send logs to STDOUT in production instead of log/production.log .
#
# RAILS_LOG_TO_STDOUT=true
#
# When using docker-compose the logs can be sent to an centralized repository like PaperTrail
# just by using the built in driver. Make sure to add to docker-compose.yml the next lines:
#
#     logging:
#      driver: $LOG_DRIVER
#      options:
#        syslog-address: $LOG_ADDRESS
#        tag: $LOG_TAG
#
# And set this variables up:
#
# LOG_DRIVER=syslog
# LOG_ADDRESS=udp://logs4.papertrailapp.com:[99999]
# LOG_TAG=greenlight.example.com:v2
#
# Check docker-compose and papertrail documentation for encrypting and
# protecting access to the log repository.
# https://docs.docker.com/config/containers/logging/syslog/#options
# https://help.papertrailapp.com/kb/configuration/encrypting-remote-syslog-with-tls-ssl/
#
# For sending logs to a remote aggregator enable these variables:
#
# RAILS_LOG_REMOTE_NAME=logxx.papertrailapp.com
# RAILS_LOG_REMOTE_PORT=9999
# RAILS_LOG_REMOTE_TAG=greenlight
#
# Force SSL
#
# ENABLE_SSL=true

# Database settings
#
# Greenlight may work out of the box with sqlite3, but for production it is recommended to use postgresql.
# In such case, these variables must be included.
#
# DB_ADAPTER=postgresql
# DB_HOST=postgres.example.com
# DB_NAME=greenlight_production
# DB_USERNAME=postgres
# DB_PASSWORD=password
#
# For deployments based on the docker-compose script also included, the HOST should be set with the Docker container id.
#
DB_ADAPTER=postgresql
DB_HOST=%PGHOST%
DB_PORT=%PGPORT%
DB_NAME=%PGDATABASE%
DB_USERNAME=%PGUSER%
DB_PASSWORD=%PGPASSWORD%

# Specify the default registration to be used by Greenlight until an administrator sets the
# registration method
# Allowed values are:
#   open - For open registration
#   invite - For invite only registration
#   approval - For approve/decline registration
DEFAULT_REGISTRATION=open
