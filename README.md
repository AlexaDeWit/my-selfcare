# My SelfCare

## Setup

- Install Node, Yarn, and Elm

## Building

- `yarn install`
- `yarn run make`

## Running

A word of caution: elm-reactor is nice but will not load the index.html document that is used to contain the js side of thigns needed for [ports](https://guide.elm-lang.org/interop/javascript.html)

After running `yarn run make`, you will should be able to load `dist/index.html` directly and get the appropriately compiled application

### Server Data Mocks

- `cd json-mocks && yarn install && yarn run start`
