FROM antoniobl/qt515musescore:arm64 AS crosscompilation
FROM arm64v8/debian:10

COPY --from=crosscompilation /qt5 /qt5
ADD https://raw.githubusercontent.com/AntonioBL/armpackagingMuseScore/qt5.15.2/Recipe /

RUN chmod +x Recipe && ./Recipe
