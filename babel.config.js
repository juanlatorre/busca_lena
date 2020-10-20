module.exports = {
  presets: ["module:metro-react-native-babel-preset"],
  plugins: [
    [
      "module-resolver",
      {
        root: ["./src"],
        extensions: [".android.js", ".js", ".ts", ".tsx", ".json"],
        alias: {
          "@components": "./src/components",
          "@views": "./src/views",
          "@images": "./src/images",
          "@theme": "./src/theme.ts",
        },
      },
    ],
  ],
};
