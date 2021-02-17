# Gd-Utils

 Gd-Utils is just another tool which helps in bypassing the 750GB daily transfer limit by Google.

:octocat: This fork is an English version of Gd-Utils by [@iwestlin](https://github.com/iwestlin)

    https://github.com/iwestlin/gd-utils

:octocat: All I have done is to edit the code and use Google Translate to translate Chinese to English. So all credits to the OP.

:octocat: I have only included the installation part for running `Gd-Utils` on your system ([Telegram Bot part is here](https://github.com/roshanconnor123/Gdutils_Tgbot))
## General Instructions
Like other tools (Autorclone/Folderclone/Gclone/Fclone)  Gd-Utils is also based upon Service Accounts aka SAs.

 Among these tools only `Autorclone` and `Folderclone` can generate SAs by themselves.
 
>Therefore for this tool to work you need SAs generated using either [Autorclone](https://github.com/xyou365/AutoRclone) or [Folderclone](https://github.com/Spazzlo/folderclone)

### 📦 Pre-Requisites:

This tool can be used on **Microsoft Windows**, **Android** and **GNU/Linux**.

📣 You will need already generated **SAs**.

📣 If you are using this on **GNU/Linux** or **Android**:-

Create a new repository on Github and name it as `accounts` then upload all your SAs (.json files) there.

[Follow this guide to understand better](https://telegra.ph/Uploading-Service-Accounts-to-Github-07-09)

## Installation

### 🔳 Windows


🌠 Install Node.js on Windows

 Install [Node.js](https://nodejs.org/dist/v12.18.4/node-v12.18.4-x64.msi) and make sure to install additional components (tick mark the option saying `Install Additional Components`).

It is essential to install the addtional components of Node.js for this tool to work.

🌠 Create a new folder onto `Desktop` and name it as `Gd-utils`.

🌠 [Download this](https://github.com/roshanconnor123/gd-utils/archive/master.zip) and extract it - copy all the contents to newly created `Gd-utils Folder` in your Desktop.

🌠 Open cmd inside `Gd-utils` folder and enter this command
```
npm install --unsafe-perm=true --allow-root
```
 If it shows `0 vulnerabilities`, it means that the installation was successful.

🌠 Go to Autorclone/Folderclone folder on your PC and open `Accounts` Folder - Copy all the .json files.

🌠 Go to `sa` Folder inside `Gd-utils` folder and paste all the .json files there


### 🔳 Android


🌠 Install [Termux](https://play.google.com/store/apps/details?id=com.termux&hl=en_IN%20%20) - Remember to enable Storage Permission by going to Settings.

🌠 Install Node.js, Python & Git with Termux
```
pkg install python && pkg install git && pkg install nodejs
```
🌠 Install Gd-utils
```
git clone https://github.com/roshanconnor123/gd-utils && cd gd-utils && npm install --unsafe-perm=true --allow-root
```
🌠 Download Service Accounts from your Github repository and configue them for Gdutils
```
bash sa.sh
```

### 🔳 GNU/Linux

🌠 Installing the dependancies and Gdutils
```bash
sudo apt-get install build-essential && sudo apt-get update && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt-get install -y nodejs && git clone https://github.com/roshanconnor123/gd-utils
```
```bash
cd gd-utils && npm install --unsafe-perm=true --allow-root
```
🌠 Download the Service Accounts from your Github repository and configure them for Gdutils
```bash
bash sa.sh
```

## Usage
🔷 Windows

 Double click on **gdutils.bat** file (In Gd-utils folder)

🔷 Android

Run the following command in **Termux**
```bash
cd gd-utils && bash gdutils.sh
```
🔷 GNU/Linux

 Run the following command in **Terminal**
```bash
cd gd-utils && bash gdutils.sh
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
This project is licenced under the [MIT](https://choosealicense.com/licenses/mit/) licence.
