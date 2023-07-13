
## Run it in console for permanent install :

```
bash -c "$(curl -fsSL https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/75ddf7154124115967c8f76bef00d23e1448a3fb/install.sh)"
```

## for fix expired bottles:
(Thanks to @github/djsmax)
```
for file in ~/Library/Application\ Support/CrossOver/Bottles/*/.{eval,update-timestamp}; do rm "$file";done
```


