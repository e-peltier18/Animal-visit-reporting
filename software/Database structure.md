#  Inputs database structure (tabs separators)

Column  Type  Comment
id  bigint  Unique identifier of the reading (used as primary key).
tag_id  varchar  Identifier of the animal.
reader_id  int  Reader’s identifier the animal has been read on.
antenna_id  int  Antenna’s identifier the animal has been read on. Identifier is an integer between 1 and 64 (if antenna multiplexing is used).
utc_date_time  datetime  UTC datetime the animal has been read at.

#  Readers table links (tabs separators)

Column  Type  Comment
id  varchar  Identifier of the reader..
name  int  Reader’s identifier the animal has been read on.
code  varchar  Code of the reader.

#  Outputs database structure (tabs separators)

Column  Type  Comment
id  bigint  Identifier of the entry..
job_id  bigint  Identifier of the visit computation batch (provided in the first parameter of the routine).
tag_id  varchar  UHF ID of the animal.
min_id  bigint  Unique identifier of the first reading considered in this visit.
max_id  bigint  Unique identifier of the last reading considered in this visit.
start    Start datatime of this visit
end    End datetime of this visit
duration    Duration (in seconds) of this visit.
no_records  int  Records’ count considered in this visit.

