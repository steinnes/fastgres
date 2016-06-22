FROM postgres:VERSION
ADD optimizations.conf /tmp/optimizations.conf
RUN cat /tmp/optimizations.conf >> /usr/share/postgresql/postgresql.conf.sample
