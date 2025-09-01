FROM mcr.microsoft.com/dotnet/runtime:9.0-bookworm-slim

# Labels
LABEL org.opencontainers.image.title="net-base"
LABEL org.opencontainers.image.description="Base NET minimal com ICU, TZ"
LABEL org.opencontainers.image.licenses="MIT"

# .NET envs + TZ/LANG envs
ENV ASPNETCORE_ENVIRONMENT=Production \
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    CORECLR_ENABLE_PROFILING=0 \
    TZ=America/Sao_Paulo \
    LANG=pt_BR.UTF-8 \
    LANGUAGE=pt_BR.UTF-8 \
    LC_ALL=pt_BR.UTF-8

# Dependências essenciais + TZ + Locale
RUN set -eux; \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        tzdata \
        locales \
        ca-certificates \
    && ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && sed -i '/^# *pt_BR.UTF-8 UTF-8/s/^# //' /etc/locale.gen \
    && locale-gen pt_BR.UTF-8 \
    && update-locale LANG=pt_BR.UTF-8 \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=app:app docker-entrypoint.sh /home/app/docker-entrypoint.sh

USER app

WORKDIR /home/app

ENTRYPOINT ["/home/app/docker-entrypoint.sh"]