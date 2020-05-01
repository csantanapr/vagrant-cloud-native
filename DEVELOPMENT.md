

## Prerequisites
To be able to build the box yourself, you'll need at least following tools installed.

* Virtualbox (tested with version 6.0.20)
* Vagrant (tested with version 2.2.7)
* packer (tested with version 1.5.5)

The build wil be uploaded to Vagrant Cloud, so you'll need an account and corresponding token there. On top of that, the box has to be pre-created for the upload to succeed.

## Usage
1. Make sure you have a Vagrant Cloud account with an authentication token. This token can be created via [`Account settings -> Security`](https://app.vagrantup.com/settings/security).

2. The script will update box `csantanapr/cloud-native`. This name is hardcoded in the scripts. If you wish to create a box in your own account, modify the scripts accordingly.
3. Make your changes, and commit them in your local git repository.
4. From this project's root directory run the build.sh bash script
```
./build.sh
```
5. Provide your Vagrant Cloud username as the script asks for it
```
What is your Vagrant Cloud username? [csantana] evenbetterboxes
```
6. Provide a valid cloud token for your account
```
What is your Vagrant Cloud token?
```
7. ???
8. Profit!

If the box build succeeded, the script will automatically create a tag in your local git repository. If you are happy with the results, push to GitHub.