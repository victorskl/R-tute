# R-tute

Assorted R Learning

Install through _**Homebrew Cask**_:

```
brew uninstall r
brew reinstall --cask r rstudio
```

Check version:

```
which R
/usr/local/bin/R

which Rscript
/usr/local/bin/Rscript

ls -l $(which R)
lrwxr-xr-x  1 root  wheel  47  4 Dec 16:42 /usr/local/bin/R -> /Library/Frameworks/R.framework/Resources/bin/R

R --version
```

R Console:

```
$ R
> .libPaths()
[1] "/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library"
> q()
```

## Related

- https://github.com/victorskl/docker-nodejs-r
