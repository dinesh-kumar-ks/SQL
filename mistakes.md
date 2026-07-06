# Mistakes

## NULL comparison

Wrong

referee_id = NULL

Correct

referee_id IS NULL

Reason

NULL is an unknown value and must be checked using IS NULL.

## LENGTH OPERATOR

len operator applicable for SQL Server

length operator applicable for postgres


## Rising Temperature

Initially tried LAG().

Realized it doesn't guarantee "previous calendar day" when dates have gaps.

Self Join on

w2.recordDate = w1.recordDate + INTERVAL '1 day'

correctly compares consecutive dates.