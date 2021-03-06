# buss - Bottom Up Static Sites

## For people who

* Want the full abstractive power of Haskell
* Like having a little server that reloads
* Prefer functions to templating systems
* Use nix

## Usage

Fork this repo, then:

### Run dev server:

```bash
nix-shell live.nix --run ./live.sh
```

### Generate static site:

```bash
nix-shell --run 'cd src; runhaskell Main.hs'
```

## Quickstart

Everything required to make your site should go in `src/`, this is where buss is run from.

The dev server reloads whenever a file in `src/` changes.

When the generator is run, the site will be put into `result/`.

The default renders XHTML5 with `blaze-html`, and CSS3 using `clay`, but you can change this to use your favourite web DSL, or you can read in and transform files.

For a more complete example website, see [owen.cafe](https://github.com/414owen/owen.cafe).
