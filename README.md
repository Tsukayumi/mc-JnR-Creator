# Easy Jump and Run Datapack for Minecraft

This datapack makes it easier to create jump-and-run maps in Minecraft. It provides a simple way to set start points, checkpoints, and end points, as well as track the timer.

## Commands

### Enabling the Datapack
`/datapack enable "file/jumpandrun"`  
Use this command to enable the datapack.

### Setting Points

- **Create Start Point:**  
  `/function jumpandrun:checkpoints/create_start`  
  Creates the start point of the jump-and-run course.

- **Create Checkpoint:**  
  `/function jumpandrun:checkpoints/create_checkpoint`  
  Creates a checkpoint where players can respawn if they die.

- **Create End Point:**  
  `/function jumpandrun:checkpoints/create_end`  
  Creates the endpoint of the jump-and-run course.

### Removing Points

- **Remove Start/Checkpoint:**  
  `/function jumpandrun:checkpoints/remove_checkpoint`  
  Removes a previously set start or checkpoint.

- **Remove End Point:**  
  `/function jumpandrun:checkpoints/remove_end`  
  Removes the endpoint of the course.

> **Important for Removing Points:**  
> When removing checkpoints or points, it is essential to follow the correct order: **top to bottom** (i.e., from the most recent to the earliest).  
> - The **last** checkpoint created must be removed first,  
> - Followed by the **previous** checkpoint, and so on,  
> - Until the **start point** is reached.

### Reset and Uninstall

- **Reset Timer and Progress:**  
  `/function jumpandrun:reset`  
  Resets the timer and the player's progress, allowing the jump-and-run course to be restarted.

- **Uninstall Datapack:**  
  `/datapack disable "file/jumpandrun"`  
  Disables the datapack and removes all associated data and settings.

- **Completely Remove Datapack:**  
  `/function jumpandrun:uninstall`  
  Removes all datapack-related scores and entries from the game.

## Additional Notes

- Be sure not to create duplicate start or end points, as this can lead to unexpected behavior.
- You can always reset progress or completely uninstall the datapack if you want to reconfigure the jump-and-run course.

Have fun creating and testing your jump-and-run maps!
