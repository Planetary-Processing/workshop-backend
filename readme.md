# Quick Start

Below we present a quick guide to getting started with our platform using the demo code that appears by default in your game repository upon creation.

###### Prerequisites

For this guide you will need the demo game client. This can be downloaded below:  
[Windows](https://localhost/)  
[macOS](https://localhost/)  
[Linux](https://localhost/)  

On Linux you will also need to install Love2D (`sudo apt-get install love`).

You will also need to be logged into your game [control panel](https://panel.planetaryprocessing.io/).

###### Starting Your Game

On the control panel select 'Start Game' from the 'Actions' dropdown, you should see some chunks light up (these are now 'loaded') and some entities moving around the world. Try clicking on a chunk to bring up a detailed view of that chunk.

###### Demo Client

Launch the demo client and connect to your world, you should see yourself moving around on the control panel. To launch the demo you'll need one of the following commands:

```
Windows: demo.exe <gameid> <username> <password>  
macOS: demo.app <gameid> <username> <password>  
Linux: love demo.app <gameid> <username> <password>  
```

###### Changing Entity Behaviour

In the game repository, try editing the behaviour of one of the entities (e.g. the cat). For example, by making it come to the nearest player. Commit and push this code.

###### Updating the Game

Stop your game on the control panel by selecting 'Stop Game' from the 'Actions' dropdown. Then, once the game has stopped, select the 'Deploy New Version' action.

Once the new version has successfully applied, you can select the 'Start Game' action. You should see the world start up again, and can now reconnect with the demo client.

###### Debugging

If you have any issues feel free to reach out to support using the [contact form](/contact). You can also access the console output (errors and print function) for each chunk by clicking the chunk and selecting the 'Console' tab.
