# Example Xcode project with self-hosted runner

### What is self-hosted runner

A self-hosted runner is your computer to execute your workflow jobs.

## Purpose

To help developers setup their projects with self-hosted runners on Mac. 

This repository has working xcode project and Github Actions workflows that can be used as a template.

See [wiki](https://github.com/paulz/self-hosted-runner-example/wiki) on instructions how to setup macOS runners

### Why self-hosted

> Self-hosted runners offer more control of hardware, operating system, and software tools than GitHub-hosted runners provide. 
See: https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#about-self-hosted-runners

Compared to cloud hosted runners this solution results in:
1. Faster runs
2. Less cost
3. Easier to debug
4. Tests on devices

At the cost:
1. Setup
2. Maintenance
