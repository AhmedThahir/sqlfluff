ALTER FILE FORMAT IF EXISTS my_file_format
    RENAME TO your_file_format
;

ALTER FILE FORMAT IF EXISTS my_csv_format SET
    TYPE = CSV,
    COMPRESSION = AUTO,
    RECORD_DELIMITER = NONE,
    FIELD_DELIMITER = NONE,
    FILE_EXTENSION = 'foobar',
    SKIP_HEADER = 1,
    SKIP_BLANK_LINES = TRUE,
    DATE_FORMAT = AUTO,
    TIME_FORMAT = AUTO,
    TIMESTAMP_FORMAT = AUTO,
    BINARY_FORMAT = HEX,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar'),
    FIELD_OPTIONALLY_ENCLOSED_BY = NONE,
    ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE,
    REPLACE_INVALID_CHARACTERS = TRUE,
    VALIDATE_UTF8 = TRUE,
    EMPTY_FIELD_AS_NULL = TRUE,
    SKIP_BYTE_ORDER_MARK = TRUE,
    ENCODING = UTF8
;

ALTER FILE FORMAT IF EXISTS my_json_format SET
    TYPE = JSON,
    COMPRESSION = AUTO,
    DATE_FORMAT = AUTO,
    TIME_FORMAT = AUTO,
    TIMESTAMP_FORMAT = AUTO,
    BINARY_FORMAT = HEX,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar'),
    FILE_EXTENSION = 'foobar',
    ENABLE_OCTAL = TRUE,
    ALLOW_DUPLICATE = TRUE,
    STRIP_OUTER_ARRAY = TRUE,
    STRIP_NULL_VALUES = TRUE,
    REPLACE_INVALID_CHARACTERS = TRUE,
    IGNORE_UTF8_ERRORS = TRUE,
    SKIP_BYTE_ORDER_MARK = TRUE
;

ALTER FILE FORMAT IF EXISTS my_avro_format SET
    TYPE = AVRO
    COMPRESSION = 'GZIP'
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    COMMENT = 'FOOBAR'
;

ALTER FILE FORMAT IF EXISTS my_orc_format SET
    TYPE = ORC
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    COMMENT = 'FOOBAR'
;

ALTER FILE FORMAT IF EXISTS my_parquet_format SET
    TYPE = PARQUET
    COMPRESSION = AUTO
    SNAPPY_COMPRESSION = FALSE
    TRIM_SPACE = FALSE
    BINARY_AS_TEXT = TRUE
    USE_LOGICAL_TYPE = FALSE
    USE_VECTORIZED_SCANNER = FALSE
    REPLACE_INVALID_CHARACTERS = FALSE
    NULL_IF = ('foo', 'bar')
    COMMENT = 'FOOBAR'
;

ALTER FILE FORMAT IF EXISTS my_xml_format SET
    TYPE = XML
    COMPRESSION = GZIP
    IGNORE_UTF8_ERRORS = FALSE
    PRESERVE_SPACE = FALSE
    STRIP_OUTER_ELEMENT = FALSE
    DISABLE_SNOWFLAKE_DATA = FALSE
    DISABLE_AUTO_CONVERT = FALSE
    SKIP_BYTE_ORDER_MARK = FALSE
    COMMENT = 'FOOBAR'
;
