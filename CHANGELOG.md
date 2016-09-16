# gunicorn Cookbook CHANGELOG

This file is used to list changes made in each version of the gunicorn cookbook.

## 2.0.0 (2016-09-16)
- Fix doc link in the readme
- Resolve rubocop and foodcritic warnings
- Testing updates
- Require Chef 12.1+

## v1.2.1 (2015-10-20)

- Added source_url and issues_url to the metadata
- Updated gitignore file
- Add Test Kitchen config
- Added chefignore file
- Added Chef standard rubocop config
- Added Travis CI testing
- Updated Gemfile with the latest testing deps
- Updated testing and contributing docs
- Added maintainers.md and maintainers.toml files
- Added travis and cookbook version badges to the readme
- Resolved Rubocop and Foodcritic warnings
- Updated Opscode -> Chef Software
- Added supported platforms to the metadata
- Updated Chefspec to 4.X format

## v1.2.0 (2014-09-18)

- [#11] Added ChefSpec matchers, Berksfile and Gemfile for testing dependencies

## v1.1.6 (2014-06-24)

- Removes smart quotes to prevent Encoding::InvalidByteSequenceError errors.

## v1.1.4 (2014-05-28)

- [COOK-4530] in gunicorn config lwrp enable options for secure headers and proc-name

## v1.1.2

### Improvement

- [COOK-3313](https://tickets.opscode.com/browse/COOK-3313)** - Add attributes for Gunicorn's log settings

### Bug

- [COOK-3019](https://tickets.opscode.com/browse/COOK-3019)** - Fix server hook name (`start_server` -> `when_ready`)

## v1.1.0

- [COOK-1188] - add LWRP for reusability
- [COOK-1207] - add missing service hooks
- [COOK-1431] - resolve foodcritic warnings
- [COOK-1486] - add missing call to super

## v1.0.0

- Current/initial release
