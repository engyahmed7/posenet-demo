# Sizely AI Detects Sizes POS

## Overview

Sizely App is a web-based application designed for real-time body pose detection via webcam. Utilizing the powerful **TensorFlow.js** and **PoseNet** models, it provides accurate body pose analysis. The application is built on **Laravel** for the backend, ensuring a robust and efficient user experience for pose recognition and analysis.

## Prerequisites

Before setting up the Sizely App, ensure the following software is installed:

-   **PHP** >= 7.3
-   **Composer** (Dependency Management)
-   **Node.js**
-   **npm** (Node Package Manager)

## Installation Guide

Follow these steps to install and set up Sizely App on your local machine:

### 1. Clone the Repository

Start by cloning the repository from GitHub to your local machine:

```bash
git clone https://gitlab.objects.ws/laravel/sizely-ai-detects-sizes-pos.git
cd sizely-ai-detects-sizes-pos
```

### 2. Install Dependencies

Use Composer to install the PHP dependencies and npm to set up the JavaScript dependencies:

```bash
composer install
npm install --legacy-peer-deps
```

### 3. Build the javascript

Build the javascript files:

```bash
npm run build
```

### 4. Configure Environment Variables

Copy the environment configuration file and adjust your settings:

```bash
cp .env.example .env
```

Next, generate the application key for secure sessions and encryption:

```bash
php artisan key:generate
```

### 5. Run Database Migrations

Set up your database by running the necessary migrations:

```bash
php artisan migrate
```

## Running the Application

### 1. Start the Laravel Development Server

Launch the Laravel development server with the following command:

```bash
php artisan serve
```

### 2. Access the Application

Once the server is running, open your web browser and go to:

```
http://127.0.0.1:8000
```

## Demo

Explore the Posenet demo to see the model in action! The demo showcases real-time pose estimation using a webcam.

### Live Demo
You can try out the demo here: [Posenet Demo](https://posenet-demo.kesug.com/)

### Features
- **Real-time Pose Estimation**: Detects and tracks human poses in real-time.
- **User-Friendly Interface**: Simple and intuitive design for easy interaction.
- **Cross-Platform Compatibility**: Works on various devices with a web browser.

### Instructions
1. Click on the link above to open the demo.
2. Allow camera access when prompted.
3. Move around to see the pose estimation in action!

## Project Structure

-   **PoseDetection.js**: This file initializes and uses the PoseNet model for real-time body pose detection through the webcam. It processes the pose data continuously as users move in front of the camera.

-   **create.blade.php**: A Blade template that serves as the UI for initiating a new trial. It includes a form for entering trial details and sections to display video and canvas elements used for pose detection.

-   **trial.js**: This JavaScript file works alongside the **PoseDetection.js** module, handling the trial process and controlling the user interface for pose detection initiation and progression.

## Acknowledgements

This application integrates several key libraries and frameworks:

-   **[TensorFlow.js](https://www.tensorflow.org/js)** for machine learning and pose detection.
-   **[PoseNet](https://github.com/tensorflow/tfjs-models/tree/master/posenet)**, a lightweight and efficient model for pose detection.
-   **[body-measure](https://github.com/AI-Machine-Vision-Lab/body-measure)**, a repository that provides body measurement functionalities integrated into the app.

These tools and frameworks enabled the development of Pose Detection App and contributed significantly to its capabilities in real-time pose detection and analysis.

