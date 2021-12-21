FROM antoniobl/qt515musescore:armhf AS crosscompilation
FROM arm32v7/debian:10

COPY --from=crosscompilation /qt5 /qt5
ADD https://raw.githubusercontent.com/AntonioBL/armpackagingMuseScore/qt5.15.2/Recipe /

RUN chmod +x Recipe && ./Recipe
