# Python Fabric and Boto

A Docker image to control remote servers in EC2 and OVH using Python.

[Python Fabric](http://www.fabfile.org/)

[Boto](https://github.com/boto/boto3)

## Building

```bash
docker build -t eduardoshanahan/fabric_boto .
```

## Running an interactive test

```bash
docker run --rm -it eduardoshanahan/fabric_boto:latest
```

## Development

If you want to make some changes and version it, bumpversion is available

```bash
bumpversion minor
```
