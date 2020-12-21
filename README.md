# S3 Upload Action

Simple `amazon/aws-cli` based Github Action to upload a file to AWS.

Heavily based on [tpaschalis/s3-cp-action](https://github.com/tpaschalis/s3-cp-action) which in turn is based on [jakejarvis/s3-sync-action](https://github.com/jakejarvis/s3-sync-action).

## Example
 
Replace `ap-southeast-2` with your Github region, then either setup AWS_S3_BUCKET, AWS_ACCESS_KEY and AWS_SECRET_KEY as Github secrets or include them in the example below (**private repos only**). Note the slight deviation from the standard AWS naming (sorry!).

```
- name: Upload output to S3
  uses: sesh/s3-upload-action@main
  with:
    args: --acl public-read
  env:
    FILE: ./output.json
    AWS_REGION: 'ap-southeast-2'
    AWS_S3_BUCKET: ${{ secrets.AWS_S3_BUCKET }}
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_KEY }}
```
