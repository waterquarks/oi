with
    entries as (
        select
            json_array(
                cast(timestamp as integer),
                cast(open_interest as real)
            ) as entry
        from derivative_ticker
        where exchange = 'woo-x' and open_interest != ''
    )
select json_group_array(json(entry)) as entries from entries;
