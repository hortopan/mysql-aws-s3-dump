# mysql-aws-s3-dump
mysqldump, compress, and upload to a specific AWS S3 Bucket via awscli.

https://github.com/hortopan/mysql-aws-s3-dump

## RUN
```bash
docker run -e CONNECTION_STRING=mysql://user:pass@mysql-host:3306/database -e BUCKET_DESTINATION=bucket/prefix hortopan/mysql-aws-s3-dump
```

## Configuration

### Required env variables

```bash
HOST=hostname
USER=user
PASS=password
PORT=3306
BUCKET_DESTINATION=bucket/bucketPrefix
WORK_DIR=/tmp
```


You can also configure the mysql connection via a `mysql connection url string`:
```bash
CONNECTION_STRING=mysql://user:password@hostname:port/database
```

### AWS cli configuration
This uses aws cli so you will need to configure [AWS cli](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) as desired.

### optional env variables
* `DATE_FORMAT="+%d-%h-%Y-%H-%M-%S"`: output date format for file name.
* `TABLES=table1 table2`: dump specific tables
* `COMPRESS=true` : compress with tar/gzip 
