FROM antoniobl/qt5musescore:armhf AS crosscompilation
FROM arm32v7/debian:9

COPY --from=crosscompilation /qt5 /qt5
ADD Recipe /

RUN chmod +x Recipe && ./Recipe
