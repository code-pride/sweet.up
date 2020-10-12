#  How to run


## Format code

The best way to format your code automatically will be to add it with `pre-commit` hook.

There is a `pre-commit` file without extension in root folder of the repository. You need to copy it to `.git/hooks` folder.

Run in terminal, from root folder:

```
cp pre-commit ./.git/hooks
```

Then set it to be executable

```
chmod +x ./.git/hooks/pre-commit
```

You can also use bash script, to manually format your code.

Format your code before pushing changes, by running

```
./reformat.sh
```


## Clone repo
```
$ git clone git@github.com:code-pride/sweet.up.git 
```





