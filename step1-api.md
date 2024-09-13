# Using Fusionauth using the API from the command line

<!-- TOP -->
<div class="top">
  <img src="https://cdn.prod.website-files.com/617b1b1f42c1da41aeae3413/6573599a9ea8c6ccef655afd_primary-logo.png" width=200/>
  <div class="scenario-title-section">
    <span class="scenario-title"><h3>Adding a New User</h3></span>
    <br />
    <span class="scenario-subtitle">ℹ️ For feedback, please contact us via <a href="mailto:kirsten.hunter@fusionauth.io">email</a>.</span>
  </div>
</div>

<!-- NAVIGATION -->
<div id="navigation-top" class="navigation-top">
 <a href='command:katapod.loadPage?[{"step":"intro"}]' 
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 1 of 2</span>
 <a href='command:katapod.loadPage?[{"step":"step2-web"}]' 
    class="btn btn-dark navigation-top-right">Next ➡️ Registering the User
  </a>
</div>

<!-- CONTENT -->

## Jump into FusionAuth - Getting Started

This workspace has been jumpstarted with a running fusionauth server and a running application.

In this module you will be working with the web UI.

## Start the FusionAuth Web UI

You may need to wait a few moments while the server comes up.  This command will return information about your server's keys as soon as the server is ready.

```
echo "Waiting for the FusionAuth server to start up"
bash serverup.sh
http :9011/api/key
```

For server interaction you will be using httpie with set authentication information.  Because of this you will not need to perform the authentication steps.

If you want to see the whole HTTP transaction you can do so by adding -vvv to the command:

```
http :9011/api/key -vvv
```

## Add a New User

The first step is to add a new user.  The user api takes an optional UUID for the user, which we will use here.

```
http POST :9011/api/user/0279d75d-4a53-4288-9b4f-89662bf6a9cf user:='{"email":"foo@bar.com", "password":"mypassword"}
```

This command will return the UUID to indicate the command was successful

In the administration screen, click on the hamburger symbol on the upper left of the screen.  Select "Users"

Stuff to add here:
* Image for opening Users
* Image for creating user

<!-- NAVIGATION -->
<div id="navigation-top" class="navigation-top">
 <a href='command:katapod.loadPage?[{"step":"intro"}]' 
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 1 of 2</span>
 <a href='command:katapod.loadPage?[{"step":"step2-web"}]' 
    class="btn btn-dark navigation-top-right">Next ➡️ Registering the User
  </a>
</div>

