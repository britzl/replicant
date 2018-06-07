# Replicant
This project shows an example of simple multiplayer game mechanics. The project uses [NoobHub](https://github.com/Overtorment/NoobHub) to broadcast data between clients. The project doesn't use an authoritative server, the clients are naively and completely trusted.

## Replicating game objects
The project uses a system where game objects and game object factories can be registered with. When a game object is registered it's position, rotation and scale will be sent along with a unique id via NoobHub to all connected clients at regular intervals. When other clients receive the data they will create a local instance of the remote game object and update it each time new transform data is received. The copies will use interpolation between current and new transform data to give the impression of smooth 60 FPS movement even though transform updates are sent less frequently.

## HTML5
This project doesn't support HTML5. NoobHub expects a normal TCP socket connection while HTML5 builds upgrade sockets to websockets.

# Example
The project contains an example game. A simple multiplayer space shooter.

## Suggested exercises
* Add score counter
* Add more enemy types
* Add sound effects
* Replace with other graphics - perhaps a top down shooter?
