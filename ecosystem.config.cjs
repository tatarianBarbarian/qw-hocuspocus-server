module.exports = {
  apps: [
    {
      name: "hocuspocus-server",
      script: "./server.js",
      instances: "1", // Or set to a number (e.g., 2)
      exec_mode: "cluster", // Optional: use 'fork' or 'cluster'
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
