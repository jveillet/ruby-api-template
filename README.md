# ruby-api-template

[![Build Status](https://github.com/jveillet/ruby-api-template/workflows/CI/badge.svg)](https://github.com/ruby-api-template/actions)

An API template build with Plain Old Ruby.

This template aims to deliver a small starting point for building a Ruby API:

* rack
* Puma
* Grape
* Swagger (Open API)
* MiniTest

It's fully customizable, and can be extended in anyway you want.

## Installation

Pull the source code from the repository:

```bash
  git clone git@github.com:jveillet/ruby-api-template.git
```

Local install:

```bash
bundle install
```

Docker install:

```bash
docker-compose build
```

## Usage

Use the example `.env` file, and change the variables to your linking:

```bash
cp .env.template .env
```

Local exec:

```bash
bundle exec puma -p $PORT # Assuming $PORT is set
```

Docker exec:

```bash
docker-compose up
```

## Contributing

Thank you for thinking about contributing! Contributors are always welcome! :thumbsup:

There is no wrong way to contribute, and there are many ways you can participate:

* Writing documentation
* Squashing bugs
* Implementing new features
* Adding or updating tests
* Suggesting new features or things to improve

### Bugs

If you find bugs, first go to the [issues page](https://github.com/jveillet/ruby-api-template/issues) and search if a related
issue isn't already listed there. Otherwise, feel free to create new ones 😎.

Create a new issue and include any informations that can help to reproduce the observed behavior:

* Stack trace
* Expected bahevior
* Current behavior
* OS / Browser

Consider adding the [bug](https://github.com/jveillet/ruby-api-template/labels) label on your ticket.

### Feature requests

Create a new issue on the [issues page](https://github.com/jveillet/ruby-api-template/issues) and add a clear description of what
the new feature should look like.

Consider adding the [feature request](https://github.com/jveillet/ruby-api-template/labels) label on your ticket.

### Pull Requests

1. Fork the project `https://github.com/jveillet/ruby-api-template/fork`
2. Clone your fork `git clone https://github.com/$YOUR_USERNAME/ruby-api-template && cd ruby-api-template`
3. Create new branch `git checkout -b feature/issue_number`
4. Make your changes, and commit `git commit -am "[feature/issue_number] your commit message"`
5. Push your changes to origin!

(replace `issue_number` with the related issue number ex: feature/1)

### Run tests

```bash
bundle exec rake test
# OR
docker-compose run --rm web bundle exec rake test
```

Tests are located un der the `test/` folder.
