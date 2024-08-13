# Date Dimension

'dim_date' is used to store and manage date-related information in a structured manner. Facilitates efficient querying and enables detailed time-based analysis in data warehouses. Provides a comprehensive set of date attributes (e.g., year, quarter, month, week, day) that ensure consistency and reduced redundancy across different reports and analyses.


## 1.0 | Relationships and Keys

#### 1.1  | Primary Keys:
* 'date_key' is uniquely identifieable field.

#### 1.2  | Foreign Keys:
* Nearly all 'dim_date' fields can be used for joins and be used as foreign keys.
  

## 2.0 | Data Dictionary

The <dim_date> table contains various attributes that represent different aspects of a date, allowing for detailed temporal analysis.

| Column Name              | Data Type  | Description                                                                                                                                                             |
|--------------------------|------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `date_key`               | INT        | A unique integer key for each date in `YYYYMMDD` format.                                                                                                                |
| `date_actual`            | DATE       | The actual date value.                                                                                                                                                  |
| `epoch`                  | BIGINT     | The Unix epoch time representing the number of seconds since 1970-01-01.                                                                                                |
| `day_suffix`             | VARCHAR(4) | The ordinal suffix for the day (e.g., "1st", "2nd", "3rd").                                                                                                             |
| `day_name`               | VARCHAR(9) | The full name of the day (e.g., "Monday").                                                                                                                              |
| `day_of_week`            | INT        | The ISO day of the week, where Monday is 1 and Sunday is 7.                                                                                                             |
| `day_of_month`           | INT        | The day of the month (1-31).                                                                                                                                             |
| `day_of_quarter`         | INT        | The day of the quarter (1-92).                                                                                                                                          |
| `day_of_year`            | INT        | The day of the year (1-366).                                                                                                                                            |
| `week_of_month`          | INT        | The week of the month (1-5).                                                                                                                                            |
| `week_of_year`           | INT        | The week of the year (1-53) as per the Gregorian calendar.                                                                                                              |
| `week_of_year_iso`       | CHAR(10)   | The ISO week of the year in `YYYY-Www-D` format, where `D` is the day of the week.                                                                                      |
| `month_actual`           | INT        | The month number (1-12).                                                                                                                                                |
| `month_name`             | VARCHAR(9) | The full name of the month (e.g., "January").                                                                                                                           |
| `month_name_abbreviated` | CHAR(3)    | The abbreviated name of the month (e.g., "Jan").                                                                                                                        |
| `quarter_actual`         | INT        | The quarter number (1-4).                                                                                                                                               |
| `quarter_name`           | VARCHAR(9) | The descriptive name of the quarter (e.g., "First", "Second").                                                                                                          |
| `year_actual`            | INT        | The four-digit year.                                                                                                                                                    |
| `first_day_of_week`      | DATE       | The date of the first day of the week (Monday) for the given date.                                                                                                      |
| `last_day_of_week`       | DATE       | The date of the last day of the week (Sunday) for the given date.                                                                                                       |
| `first_day_of_month`     | DATE       | The date of the first day of the month for the given date.                                                                                                              |
| `last_day_of_month`      | DATE       | The date of the last day of the month for the given date.                                                                                                               |
| `first_day_of_quarter`   | DATE       | The date of the first day of the quarter for the given date.                                                                                                            |
| `last_day_of_quarter`    | DATE       | The date of the last day of the quarter for the given date.                                                                                                             |
| `first_day_of_year`      | DATE       | The date of the first day of the year for the given date.                                                                                                               |
| `last_day_of_year`       | DATE       | The date of the last day of the year for the given date.                                                                                                                |
| `year_month`             | CHAR(7)    | The year and month in `YYYY-MM` format.                                                                                                                                 |
| `mmddyyyy`               | CHAR(10)   | The date in `MMDDYYYY` format.                                                                                                                                          |
| `weekend_indr`           | BOOLEAN    | Indicator of whether the date is a weekend (Saturday or Sunday), where `TRUE` represents a weekend and `FALSE` represents a weekday.                                    |

