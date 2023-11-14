# Quick Start

Below we present a quick guide to getting started with our platform using the demo code that appears by default in your game repository upon creation.

###### Prerequisites

For this guide you will need the demo game client. This can be downloaded below:  
<a href="https://planetaryprocessing.io/downloads/demo_windows.zip" target="_blank">Windows</a>  
<a href="https://planetaryprocessing.io/downloads/demo_macos.zip" target="_blank">macOS</a>  
<a href="https://planetaryprocessing.io/downloads/demo.love" target="_blank">Linux</a>  

On Linux you will also need to install Love2D (e.g. `sudo apt-get install love` on Debian/Ubuntu).

You will also need to be logged into your game [control panel](https://panel.planetaryprocessing.io/).

###### Starting Your Game

On the control panel select 'Start Game' from the 'Actions' dropdown, you should see some chunks light up (these are now 'loaded') and some entities moving around the world. Try clicking on a chunk to bring up a detailed view of that chunk.

###### Demo Client

Launch the demo client and connect to your world, you should see yourself moving around on the control panel. To launch the demo you'll need one of the following command line commands (in command prompt, terminal or equivalent):

```
Windows: demo.exe <gameid> <email> <password>  
macOS: demo.app <gameid> <email> <password>  
Linux: love demo.app <gameid> <email> <password>  
```

###### Changing Entity Behaviour

In the game repository, try editing the behaviour of one of the entities (e.g. the cat). For example, by making it come to the nearest player. Commit and push this code.

Detailed documentation on the Lua API can be found [on our website](https://panel.planetaryprocessing.io/docs#server-side-api-documentation).

###### Updating the Game

Stop your game on the control panel by selecting 'Stop Game' from the 'Actions' dropdown. Then, once the game has stopped, select the 'Deploy New Version' action.

Once the new version has successfully applied, you can select the 'Start Game' action. You should see the world start up again, and can now reconnect with the demo client.

###### Debugging

If you have any issues feel free to reach out to support using the [contact form](https://panel.planetaryprocessing.io/contact). You can also access the console output (errors and print function) for each chunk by clicking the chunk and selecting the 'Console' tab.

