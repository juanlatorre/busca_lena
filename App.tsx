/**
 * @format
 */

import React from "react";
import { Home } from "@views/Home";
import { ThemeProvider } from "react-native-magnus";
import { StatusBar } from "react-native";
import { theme } from "@theme";

const App = () => {
  return (
    <ThemeProvider theme={theme}>
      <StatusBar translucent />
      <Home />
    </ThemeProvider>
  );
};

export default App;
