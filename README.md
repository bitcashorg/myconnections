# myconnections

Don't get left behind.  Build your Ai professional network (LinkedIn + LinkTree v1: QR code, add social/contact links, automated Ai-focused bio)

## **Local Development:**

### Installing Package Manager

- Install bun <https://bun.sh/docs/installation#macos-and-linux>
- On root folder or to the app that you want to run and execute `bun i # bun install` and then run a script from a `package.json` by executing `bun {script} # bun dev`

> TIP: bun use similar name convention on functions and options as yarn

### Deploying only Hasura (see `.env.sample` for reference)

```bash
cd apps/myconnections-hasura
hasura init --endpoint http://localhost:8080
hasura migrate apply
hasura metadata apply
hasura seed apply
```

### Deploying with Docker (see `.env.sample` and `Taskfile.yml` for reference)

- Install [Docker Desktop](https://docs.docker.com/desktop/) and [Taskfile CLI](https://taskfile.dev/installation/) if you haven't.

```bash
task boot # boot up docker containers. Install if does not find local images. Make migrations and seeds.
task console # open hasura console. ! Make sure to always make changes in console this way.
# * Additional useful commands
task down # stop docker containers
task reboot # reboot docker containers
```

### Developing the frontend

- **React Native:** [README.md](./apps/myconnections-native/README.md)

### Development Conventions: [conding-style-n-conventions.md](./coding-style-n-conventions.md)
