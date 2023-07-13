
## Run it in console for permanent install :

```
bash -c "$(curl -fsSL https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/c7615c2beffb3ff0f7c3ac10bd66f7019e0a5576/install.sh)"
```

## for fix expired bottles:
(Thanks to @djsmax)
```
for file in ~/Library/Application\ Support/CrossOver/Bottles/*/.{eval,update-timestamp}; do rm "$file";done
```


