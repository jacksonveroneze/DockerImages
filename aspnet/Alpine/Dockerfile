FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine

# .NET envs
ENV ASPNETCORE_ENVIRONMENT=Production
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

# TZ/LANG envs
ENV TZ=America/Sao_Paulo
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8
ENV LC_ALL pt_BR.UTF-8

RUN apk update && \
    apk upgrade && \
    apk add --no-cache musl musl-utils musl-locales musl-locales-lang icu-data-full icu-libs curl && \
    rm -rf /var/cache/apk/*

RUN echo $TZ > /etc/timezone && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

RUN echo "export LC_ALL=$LC_ALL" >> /etc/profile.d/locale.sh && \
    sed -i "s/LANG=./LANG=$LANG/" /etc/profile.d/locale.sh

COPY docker-entrypoint.sh /home/app

EXPOSE $ASPNETCORE_HTTP_PORTS/tcp

USER app

WORKDIR /home/app

ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]