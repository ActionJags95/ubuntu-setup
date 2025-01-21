# ubuntu-setup
Run the setup by running the `setup-machine.sh` file.

## Installing VS Code:
Open VS Code download page by clicking [here](https://code.visualstudio.com/download).\
Download the latest `.deb` file of VS Code for Ubuntu and run `sudo dpkg -i` for the setup file.

## If fractional scaling is turned on:
### For chrome:
Open chrome and type `chrome://flags/#ozone-platform-hint` and choose **Wayland** option.\
Once done, restart chrome

### For VS Code
Open terminal and run the following command:
```
    nano /usr/share/applications/code.desktop
```

For the line starting with `Exex =`, replace the line with:
```
Exec=/usr/share/code/code --enable-features=UseOzonePlatform --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto --unity-launch %F
```

Save the file and restart VS Code.