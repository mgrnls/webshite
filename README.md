# webshite

A tiny static site generator built around pandoc.

Place blog posts in `posts/`, edit template and style in `assests/`, and write home page in `home.md`. When done, run

```
. mksite.sh
```

to build the site.

## Notes
- Requires you to have a `style.css` and `template.html` in `assets/`.
- Requires a copy of pandoc on your machine.
- No support for images (yet). I'll add them if I need them.
- Blog post list gets added to the bottom of `home.md`.
- Might add RSS in future.
- Might add support for other pages (about, contact, etc.).
