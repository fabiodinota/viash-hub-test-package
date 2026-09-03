# Viash Hub test package

A minimal Viash package for testing source discovery, release builds, and build-repository error states.

## Publish the source

Create an empty GitHub repository, then run:

```bash
git init
git add .
git commit -m "Add Viash Hub test package"
git branch -M main
git remote add origin https://github.com/YOUR_USER/YOUR_REPOSITORY.git
git push -u origin main
```

## Test Viash Hub

1. Add the GitHub repository as a package in Viash Hub.
2. Before building, expand the package and confirm it says **No builds published yet**.
3. Open **Manage Builds**, start release `v0.1.0` from `main`, and wait until it reports **Succeeded**.
4. Confirm `v0.1.0` appears in the package versions.
5. In package **Settings**, rename the package by appending `_renamed`.
6. Open the package at its new URL and expand it. The successful build remains associated with the package ID, while the derived build-repository URL now points at a repository that does not exist. Viash Hub should show its friendly genuine-error state and no raw Git callback error.
7. Rename the package back to restore the original build-repository lookup.

The rename test assumes the package uses the default build-repository name and has no explicit `buildName` or `buildRepo` override.
