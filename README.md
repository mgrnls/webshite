# webshite

A tiny static site generator built around pandoc.

Place your blog posts in `posts/`, edit the template and style in `assests/`, and write your home page in `home.md`. When done, run

```
. mksite.sh
```

to build then site.

## Notes
- Requires a copy of pandoc on your machine.
- No support for images (yet). I'll add them if I need them.
- Blog post list gets added to the bottom of of `home.md`.
