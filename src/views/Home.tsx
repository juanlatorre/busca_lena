import styled, { css } from "@emotion/native";
import React, { FC } from "react";
import { ImageBackground } from "react-native";
import {
  Button,
  Div,
  Icon,
  Image,
  ScrollDiv,
  Tag,
  Text,
} from "react-native-magnus";
import { theme } from "theme";
import PatternHero from "@images/pattern_hero.png";
import SelloCalidad from "@images/sello.png";

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
          flexDir="column"
          alignItems="center"
          justifyContent="space-between"
        >
          <Div
            flexDir="row"
            alignItems="center"
            justifyContent="space-between"
            px={5}
            py={10}
            w="100%"
          >
            <Text fontSize="lg">Álvaro Villanueva</Text>
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
            flexDir="row"
            alignItems="center"
            justifyContent="space-between"
            px={5}
            py={10}
            w="100%"
          >
            <Div flexDir="row" alignItems="center">
              <Tag rounded="2xl" bg="red" color="white" fontSize="xs">
                Saco
              </Tag>
              <Tag rounded="2xl" ml="md" bg="red" color="white" fontSize="xs">
                Metro
              </Tag>
              <Tag rounded="2xl" ml="md" bg="red" color="white" fontSize="xs">
                Cortado
              </Tag>
            </Div>

            <Div flexDir="row" alignItems="center"></Div>
              <Tag rounded="2xl" ml="md" bg="yellow" fontSize="xs">
                Nativa
              </Tag>
              <Tag rounded="2xl" ml="md" bg="yellow" fontSize="xs">
                Eucaliptus
              </Tag>
            </Div>
          </Div>

          <Div
            flexDir="row"
            alignItems="center"
            justifyContent="space-between"
            px={5}
            py={10}
            w="100%"
          >
            <Div flexDir="row" alignItems="center">
              <Image h={18} w={18} source={SelloCalidad} />
              <Text ml="md">Certificada</Text>
            </Div>
            <Button
              px="lg"
              py="md"
              color="white"
              bg="blue"
              rounded="2xl"
              suffix={<Icon ml="md" name="arrowright" color="white" />}
            >
              Ver más
            </Button>
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
