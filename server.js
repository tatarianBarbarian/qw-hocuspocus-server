import { Server } from "@hocuspocus/server";
import { Logger } from "@hocuspocus/extension-logger";

const server = new Server({
  port: 1234,
  extensions: [new Logger()],
});

server.listen();
