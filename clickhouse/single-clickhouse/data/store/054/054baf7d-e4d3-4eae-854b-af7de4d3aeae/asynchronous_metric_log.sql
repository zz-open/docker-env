ATTACH TABLE _ UUID '00d49418-75f8-47dd-80d4-941875f897dd'
(
    `event_date` Date,
    `event_time` DateTime,
    `event_time_microseconds` DateTime64(6),
    `metric` LowCardinality(String),
    `value` Float64
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_date)
ORDER BY (event_date, event_time)
SETTINGS index_granularity = 8192
