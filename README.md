# Nuxt Résumé

<a href="https://gitlab.com/nfriend/nuxt-resume/pipelines/latest"
  target="_blank"><img
  src="https://gitlab.com/nfriend/nuxt-resume/badges/master/pipeline.svg"
  alt="GitLab build status"></a>

My résumé, built with [NuxtJS](https://nuxtjs.org/guide/installation) and
[Tailwind CSS](https://tailwindcss.com/): https://resume.nathanfriend.io (or
[view as a
PDF](https://resume.nathanfriend.io/Nathan%20Friend%20-%20R%C3%A9sum%C3%A9.pdf))

![A screenshot of my resume](https://resume.nathanfriend.io/screenshot.png)

## Data

All of the content of this resume is sourced from
[`resume-data.json`](./resume-data.json). This file loosely adheres to the
[`resume.json` schema](https://jsonresume.org/schema/) (with some additional
properties for display purposes). See the [resume.json](#resumejson) section
below for more info about `resume.json` compatibility.

Additionally, a `resume-data.private.json` file can be created alongside
[`resume-data.json`](./resume-data.json). This file is `.gitignore`-ed; its
contents will be merged into [`resume-data.json`](./resume-data.json) when
building this résumé. This is used to protect personal info such as phone
numbers and addresses, while still allowing this data to appear in
locally-generated résumés.

## Inspiration

This project's visual style was heavily inspired by the [Universal Résumé
Template](https://universal-resume-pages.netlify.com/).

## resume.json

As part of the CI pipeline, a `resume.json` file that conforms to the
[`resume.json` schema](https://jsonresume.org/schema/) is extracted from
[`resume-data.json`](./resume-data.json) and automatically pushed to a [GitLab
Snippet](https://gitlab.com/snippets/1948091) and a [GitHub
Gist](https://gist.github.com/nfriend/36d83b1526df75a663d9c3ad0b1cd630). The
[`ci/generate-resume.json.js`](./ci/generate-resume.json.js) script is
responsible for this work.

You can view the rendered result at https://registry.jsonresume.org/nfriend.

## Build Setup

```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# build for production and launch server
$ yarn build
$ yarn start

# generate static project
$ yarn generate
```

For other useful commands, check out the `scripts` defined in
[`package.json`](./package.json).

### HTML linting

One `yarn` script in particular - `yarn html-lint` - requires some setup before
it will run:

- Install [Ruby](https://www.ruby-lang.org/en/)
- Install [Bundler](https://bundler.io/)
- Run `bundle install` at the root of this project
- Run `yarn generate` to generate a production build in `./dist`

Once these prerequisites have been completed, running `yarn html-lint` will run
[`html-proofer`](https://github.com/gjtorikian/html-proofer) on the output
`*.html`. This is particularly useful for validating that all external links are
still valid.

### More info

For detailed explanation on how things work, check out [Nuxt.js
docs](https://nuxtjs.org).

## License

All resume content in [`resume-data.json`](./resume-data.json) (or generated by
[`ci/generate-resume.json.js`](./ci/generate-resume.json.js)) are Copyright
Nathan Friend © 2020 and may not be reused without my permission.

All other directories and files are MIT Licensed. If you make use of any code
found in this project, a link back to https://gitlab.com/nfriend/nuxt-resume
would be appreciated, but is not required.

## Attributions

Icons were sourced from [Font Awesome](https://fontawesome.com/)
([license](https://fontawesome.com/license)). No changes were made to the icons.
