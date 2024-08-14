# VSAGS
Vehicle Survelliance using OpenCV

This project has two main parts: the client side, where the CCTV cameras are set up, and the server side, which handles all the data and sends emails to users when needed. On the client side, the CCTV cameras capture footage and extract vehicle numbers, which are then sent to the server. The server stores all the logs of these vehicles, and users can check their vehicle's entry and exit records through a web application.

For business complexes, we've created a system that lets users reserve a parking space online by entering their vehicle number. Once registered, they can park in their assigned spot without any delay. If a user hasn't reserved a spot, their vehicle is directed to a person who will manually register them using the same kind of application. Essentially, when a vehicle arrives at the business complex, the CCTV camera captures the license plate number, checks it against the database for a reserved parking space, and if there isn't one, the vehicle is redirected to complete the registration manually.

This repository only consists of the server code and this needs two devices and a camera to test the whole project.
