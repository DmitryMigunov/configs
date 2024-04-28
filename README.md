The configuration files are managed with [Stow](https://www.gnu.org/software/stow/).

## Installing

```bash
yay -S --noconfirm --ask=4 --needed - < packages.txt
stow -t ~ -vS configs
```

or you can simply run `./sync`
