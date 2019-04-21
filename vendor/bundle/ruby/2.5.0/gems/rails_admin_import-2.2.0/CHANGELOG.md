# Change Log

# 2.0.0 / 2016-05-04

- Pull in the encoding list from the Encoding module instead of RailsAdmin. Thanks @baldursson, @patricklewis and @lucasff

# 1.4.0 / 2016-02-26

- Implement row limit (default maximum is 1000 rows). Thanks @codealchemy!
- Document mapping keys. Thanks @zrisher!
- Ignore columns with blank headers in CSV files

# 1.3.1 / 2016-02-11

- Bugfix: Create log/import directory when logging config option is enabled. Thanks @yovasx2!

# 1.3.0 / 2015-11-24

- Use `where.first` instead of `find_by` so update works for Mongoid

## 1.2.0 / 2015-08-27

- Existing records can now be updated based on a belongs_to foreign key. Thanks Diego Carrion!
- Add Excel file format support
- Autoload the Excel import and encoding detection gems

## 1.1.0 / 2015-08-04

- `csv_options` config added. Thanks Maksim Burnin!

## 1.0.0 / 2015-06-09

Major rework of the gem by new maintainer.

- Support for Mongoid
- Changed model import hooks to take 1 hash argument
- Use Rails Admin abstract model instead of ActiveRecord reflection for better compatibility with custom associations
- Support CSV and JSON
- Update styling for Bootstrap 3
- Added tests


## 0.1.9 / 2014-05-22

- Updated/corrected README
- Merged ImportLogger work
- Merged modifications to import view
- Merged post save hook on models
