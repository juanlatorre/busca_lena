import styled, { css } from "@emotion/native";
import React, { FC } from "react";
import { ImageBackground } from "react-native";
import { Div, ScrollDiv, Text } from "react-native-magnus";
import { theme } from "theme";
import PatternHero from "@images/pattern_hero.png";

const SafeArea = styled.SafeAreaView`
  flex: 1;
  align-items: center;
  background-color: ${theme.colors.cream};
`;

export const Home: FC = () => {
  return (
    <SafeArea>
      <ScrollDiv
        w="100%"
        h="100%"
        contentContainerStyle={css`
          justify-content: center;
          align-items: center;
        `}
      >
        <Div
          bg="blue"
          h={200}
          w="100%"
          justifyContent="space-between"
          alignItems="center"
          flexDir="row"
          roundedBottom="2xl"
        >
          <ImageBackground
            source={PatternHero}
            // @ts-expect-error
            imageStyle={css`
              resize-mode: repeat;
            `}
            style={css`
              width: 100%;
              height: 100%;
            `}
          />
        </Div>

        <Div bg="white" flex={1} w="93%" px="lg" roundedTop="2xl" mt={-80}>
          <Text bg="red" h={300}>
            Hola
          </Text>

          <Text bg="black" h={300}>
            Hola
          </Text>
        </Div>
      </ScrollDiv>
    </SafeArea>
  );
};
