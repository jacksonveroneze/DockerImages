FROM mcr.microsoft.com/dotnet/aspnet:9.0-bookworm-slim

# .NET envs
ENV ASPNETCORE_ENVIRONMENT=Production
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

# TZ/LANG envs
ENV TZ=America/Sao_Paulo
ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR.UTF-8
ENV LC_ALL=pt_BR.UTF-8

RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends locales curl && \
    apt clean && apt autoclean && apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN echo $TZ > /etc/timezone && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime  && \
    dpkg-reconfigure -f noninteractive tzdata

RUN sed -i '/^# *pt_BR.UTF-8 UTF-8/s/^# //' /etc/locale.gen && \
    locale-gen pt_BR.UTF-8 && \
    update-locale LANG=pt_BR.UTF-8

COPY docker-entrypoint.sh /home/app

RUN chmod +x docker-entrypoint.sh && \
    chown -R app:app /home/app

USER app

WORKDIR /home/app

ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]