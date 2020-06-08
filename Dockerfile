FROM hayd/alpine-deno:1.0.5

EXPOSE 8080  # The port that your application listens to.

WORKDIR /app

# Prefer not to run as root.
USER deno

COPY main.ts .

RUN deno cache main.ts

CMD ["run", "--allow-net", "main.ts"]
