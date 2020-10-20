import styled, { css } from "@emotion/native";
import React, { FC } from "react";
import { ImageBackground } from "react-native";
import { Div, Icon, ScrollDiv, Text } from "react-native-magnus";
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
          bg="yellow"
          h={200}
          justifyContent="space-between"
          alignItems="center"
          flexDir="row"
          roundedBottom={20}
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
              overflow: hidden;
              border-bottom-left-radius: 20px;
              border-bottom-right-radius: 20px;
            `}
          />
        </Div>

        <Div
          bg="white"
          w="93%"
          h={150}
          px="lg"
          rounded="2xl"
          mt={-80}
          mb={15}
          shadow="md"
          flexDir="row"
          justifyContent="space-between"
        >
          <Text>we</Text>
          <Div flexDir="row">
            <Icon
              name="star"
              color="yellow"
              fontSize="title"
              fontFamily="FontAwesome"
            />
            <Icon
              name="star"
              color="yellow"
              fontSize="title"
              fontFamily="FontAwesome"
            />
            <Icon
              name="star"
              color="yellow"
              fontSize="title"
              fontFamily="FontAwesome"
            />
            <Icon
              name="star"
              color="gray"
              fontSize="title"
              fontFamily="FontAwesome"
            />
            <Icon
              name="star"
              color="gray"
              fontSize="title"
              fontFamily="FontAwesome"
            />
          </Div>
        </Div>

        <Div
          bg="white"
          w="93%"
          h={150}
          px="lg"
          rounded="2xl"
          mb={15}
          shadow="md"
        >
          <Text>we</Text>
        </Div>

        <Div
          bg="white"
          w="93%"
          h={150}
          px="lg"
          rounded="2xl"
          mb={15}
          shadow="md"
        >
          <Text>we</Text>
        </Div>

        <Div
          bg="white"
          w="93%"
          h={150}
          px="lg"
          rounded="2xl"
          mb={15}
          shadow="md"
        >
          <Text>we</Text>
        </Div>
      </ScrollDiv>
    </SafeArea>
  );
};
