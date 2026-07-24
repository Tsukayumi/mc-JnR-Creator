# Jump and Run Datapack for Minecraft

This datapack makes it easier to create jump-and-run maps in Minecraft. It provides a simple way to set checkpoints, as well as track the timer.

## Commands

### Enabling the Datapack
`/datapack enable "file/jumpandrun"`  
Use this command to enable the datapack.

### Checkpoints
- **Create Checkpoint:**  
  `/function jumpandrun:checkpoints/create_checkpoint`  
  Creates a checkpoint where players can respawn if they die.

- **Remove Start/Checkpoint:**  
  To remove a checkpoint, just remove the pressure plate under the checkpoint.

> **Important for Removing Points:**  
> When removing a checkpoint, keep in mind you can only add new checkpoints at the top.

### Reset and Uninstall
- **Reset Timer and Progress:**  
  `/function jumpandrun:reset`  
  Resets the timer and the player's progress, allowing the jump-and-run course to be restarted.

- **Uninstall Datapack:**  
  `/function jumpandrun:uninstall`   
  Removes all datapack-related scores and entries from the game.

- **Completely Remove Datapack:**  
  `/datapack disable "file/jumpandrun"`  
  Disables the datapack and removes all associated data and settings.

## Additional Notes
- You can right-click with a carrot_on_a_stick to teleport to your last checkpoint.
