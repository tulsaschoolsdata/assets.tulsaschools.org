# assets.tulsaschools.org

A static site for directing users to Tulsa Public Schools’ instance of
[Follett Destiny] from the former URL of Tulsa Public Schools’ instance
of [Snipe-IT] ([assets.tulsaschools.org]).

## Deployment

Deployment is handled by [GitHub Pages] (see [.github/workflows/pages.yml]).

```console
$ make build
npx tailwindcss -i src/style.css -o public/assets/style.css

Rebuilding...

Done in 91ms.
```

```console
$ tree build 
build
├── 404.html
├── assets
│   ├── style.css
│   └── tps-logo-color.svg
├── favicon.ico
├── index.html
└── robots.txt

```

## Development

Development dependencies include `node` (see [.node-version]) and optionally `make`.

```console
$ make dev
make -j2 dev-all
node src/dev.js
npx tailwindcss -i src/style.css -o public/assets/style.css --watch
Serving "./public" at http://127.0.0.1:8181
Ready for changes

Rebuilding...

Done in 93ms.
```


[Follett Destiny]: https://tulsaschools.follettdestiny.com/
[Snipe-IT]: https://snipeitapp.com/
[assets.tulsaschools.org]: https://assets.tulsaschools.org/
[GitHub Pages]: https://pages.github.com/
[.node-version]: .node-version
[.github/workflows/pages.yml]: .github/workflows/pages.yml
