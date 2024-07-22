FROM elixir:latest

# Dependencies
RUN apt update \
  && apt upgrade -y \
  && apt install -y bash curl git build-essential inotify-tools

# Phoenix
RUN mix local.hex --force 
RUN mix archive.install hex phx_new --force

# RUN mix archive.install --force hex phx_new ${PHOENIX_VERSION}
# RUN mix local.rebar --force

WORKDIR /discuss

# Default Command
# CMD ["mix", "phx.server"]