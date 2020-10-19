module.exports = {
  root: true,
  extends: ["@react-native-community"],
  parser: "@typescript-eslint/parser",
  plugins: ["@typescript-eslint", "prettier"],
  rules: {
    "prettier/prettier": "error",
    "func-names": "off",
    "no-console": "off",
    "react/prop-types": "off",
    "import/no-named-as-default": "off",
    "import/no-named-as-default-member": "off",
    "react-native/no-color-literals": "off",
    quotes: ["error", "double"],
    "no-useless-escape": "off",
  },
};
