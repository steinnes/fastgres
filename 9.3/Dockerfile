FROM postgres:VERSION
RUN mkdir -p /tmp/optimizations
ADD optimizations.conf /tmp/optimizations/0.conf
ADD 9.6/optimizations.conf /tmp/optimizations/1.conf
RUN cat /tmp/optimizations/* >> /usr/share/postgresql/postgresql.conf.sample
