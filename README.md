# My SelfCare

## Setup

- Install Node, Yarn, and Elm

## Building

- `yarn install`
- `yarn run make`

## Running

A word of caution: elm-reactor is nice but will not load the index.html document that is used to contain the js side of things needed for [ports](https://guide.elm-lang.org/interop/javascript.html)

After running `yarn run make`, you will should be able to load `dist/index.html` directly and get the appropriately compiled application

### Server Data Mocks

- `cd json-mocks && yarn install && yarn run start`

### Contribution Guidelines

- All patches must be contributed via a pull request from a branch.
- Branch naming is up to the discretion of the contributor
- Branches will be deleted when pull requests are merged.
- All pull requests require at least one code review to be merged into master.
- Please reference the issue a PR attempts to address in the pull request. This can be done by writing something like "this resolves issue AlexaDeWit/my-selfcare#128321"
