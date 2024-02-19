# homebrew-mommy 🍺
homebrew formula for [mommy](https://github.com/FWDekker/mommy)~ ❤️

see [mommy](https://github.com/FWDekker/mommy) for installation instructions~


## development ⚗️
the formula can be updated to distribute mommy version `<version>` by running `./update.sh <version>`~

the `main` branch of this repo contains the formula as used by users.
the `dev` branch contains unreleased changes which will be included in the next release of mommy~

when a release is created at the [mommy repo](https://github.com/FWDekker/mommy), its
[cd action](https://github.com/FWDekker/mommy/blob/main/.github/workflows/cd.yml) also automatically merges `dev` into
`main` and then updates the formula to point to the latest version of mommy.
no human intervention required!


## acknowledgements 💖
this repo used [homebrew-shellspec](https://github.com/shellspec/homebrew-shellspec) as a template~
