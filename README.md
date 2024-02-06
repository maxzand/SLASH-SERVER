# Slash Game Server

## Description
Slash Game Server is a robust server architecture for the 2D game Slash, built using the Godot game engine and scripted in GDScript. Designed to facilitate seamless multiplayer experiences, the server employs a combination of UDP and TCP protocols, alongside higher-level Remote Procedure Calls (RPC), to synchronize player states and world states across sessions. This setup includes separate servers for gateway and authentication processes, ensuring secure account storage and management. All components are deployed on an Amazon EC2 instance for reliable and scalable online gameplay.

## Key Features
- **Multi-Protocol Support:** Utilizes both UDP and TCP protocols to optimize network communication for game state synchronization.
- **Higher-Level RPC:** Employs RPC for efficient and straightforward method invocation across the network, enhancing gameplay interactivity and consistency.
- **Dedicated Gateway Server:** A separate gateway server to manage incoming connections and route traffic appropriately, ensuring smooth and scalable player interactions.
- **Authentication Server:** An isolated authentication server that securely handles user accounts and login processes, safeguarding player information.
- **Amazon EC2 Deployment:** Hosted on Amazon EC2 to leverage the scalability, reliability, and performance of cloud computing.

## Technologies Used
- **Godot Game Engine:** A powerful and open-source game engine for building 2D and 3D games.
- **GDScript:** A high-level, dynamically typed programming language used to create content within Godot.
- **UDP/TCP:** Networking protocols used for fast and reliable data transmission.
- **RPC:** Remote Procedure Call mechanism for executing functions across the network.
- **Amazon EC2:** A web service that provides secure, resizable compute capacity in the cloud.

## Getting Started
To set up the Slash Game Server for development or deployment, follow these steps:

1. **Prerequisites**
   - Install Godot Engine (latest version recommended).
   - Basic knowledge of GDScript and networking concepts.
   - An Amazon EC2 instance set up for deployment.

2. **Installation**
   - Clone the repository to your local machine or EC2 instance.
   - Open the project in Godot Engine to make any necessary adjustments or to run locally.

3. **Deployment**
   - Run the EXE files of the respective servers.
   - If you made changes, use Godot to rebuild the project.
