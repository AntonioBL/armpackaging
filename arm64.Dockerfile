FROM antoniobl/qt5musescore:arm64 AS crosscompilation
FROM arm64v8/debian:9

COPY --from=crosscompilation /qt5 /qt5
ADD https://raw.githubusercontent.com/AntonioBL/armpackagingMuseScore/master/Recipe /

RUN chmod +x Recipe && ./Recipe
