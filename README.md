# postfast

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

[1]: http://blog.endpoint.com/2012/06/speeding-up-integration-tests-with.html
