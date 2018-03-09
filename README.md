# fastgres

This repository contains the Dockerfiles and build script to create unsafe, but
much faster versions of the standard postgres Dockers.  The purpose of these is
to have an easily accessible faster version of postgres for throwaway purposes
such as CI.

## Inspiration

The inspiration for the project comes after spending a few years developing
python applications that are backed by postgres, with a lot of latent logic
embedded in the ORM layer (SQLAlchemy usually).

Szymon Lipiński wrote a [nice blog post][1] on the topic, from which the default
optimization parameters are lifted.



## Usage

Just use `steinnes/fastgres:9.[3456]` where you would normally use `postgres:9.[3456]`
in your Dockerfiles or docker-compose service files.


## Companies using fastgres

### [Takumi][2]

It cut our build times by ~80 seconds.

#### Before
![image](https://cloud.githubusercontent.com/assets/1097582/16273359/d0673316-3890-11e6-886a-ccaa03206959.png)

#### After
![image](https://cloud.githubusercontent.com/assets/1097582/16273403/efc43510-3890-11e6-8219-18b328b00be9.png)



[1]: http://blog.endpoint.com/2012/06/speeding-up-integration-tests-with.html
[2]: http://takumi.com
