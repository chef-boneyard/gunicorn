gunicorn Cookbook CHANGELOG
===========================
This file is used to list changes made in each version of the gunicorn cookbook.


v1.1.2
------
### Improvement
- **[COOK-3313](https://tickets.opscode.com/browse/COOK-3313)** - Add attributes for Gunicorn's log settings

### Bug
- **[COOK-3019](https://tickets.opscode.com/browse/COOK-3019)** - Fix server hook name (`start_server` -> `when_ready`)

v1.1.0
------
- [COOK-1188] - add LWRP for reusability
- [COOK-1207] - add missing service hooks
- [COOK-1431] - resolve foodcritic warnings
- [COOK-1486] - add missing call to super

v1.0.0
------
- Current/initial release
