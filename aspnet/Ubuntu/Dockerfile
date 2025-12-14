FROM mcr.microsoft.com/dotnet/aspnet:10.0

# Labels
LABEL org.opencontainers.image.title="aspnet-base"
LABEL org.opencontainers.image.description="Base ASP.NET minimal com ICU, TZ e healthcheck"
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
        curl \
    && ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && sed -i '/^# *pt_BR.UTF-8 UTF-8/s/^# //' /etc/locale.gen \
    && locale-gen pt_BR.UTF-8 \
    && update-locale LANG=pt_BR.UTF-8 \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=app:app docker-entrypoint.sh /home/app/docker-entrypoint.sh

HEALTHCHECK --interval=10s --timeout=1s --start-period=5s --retries=3 \
  CMD curl --silent --fail http://localhost:8080/health?source=docker-inner || exit 1

USER app

WORKDIR /home/app

ENTRYPOINT ["/home/app/docker-entrypoint.sh"]