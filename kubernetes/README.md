# vagrant kubernetes development enviornment

## Usage

1- Example Project

 1. If you want to use the default project, all you need is running ```skaffold dev``` command in this directory. It is ready to use. Change ```app.py``` and see the results in a short time.


2- Your project

1. Create your directory
1. Create your project and Dockerfile
    
    1. ``` skaffold init --generate-manifests ``` command will create ``` deployment.yaml ``` and ```skaffold.yaml``` for you.
    1. If you just want to change this python project change the files and run ``` skaffold dev ```