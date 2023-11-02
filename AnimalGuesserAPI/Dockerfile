# The first instruction must be a FROM instruction (unless the FROM instruction is preceded by an ARG instruction).
# The FROM instruction initializes a new build phase, specifies the parent image from which the current image will be built, and sets the base image for subsequent instructions.
# I know that Eclipse Temurin, as their website says, "...provides code and processes that support the building of runtime binaries and associated technologies," and I assume the relevance of Eclipse Temurin is that they provide "high-performance, enterprise-caliber, cross-platform" java development kit images complete with a JRE, but I am still unsure exactly why Docker recommends that we use this over others and, especially, why one might choose "focal" over "jammy", for example (or even where one might find a list of these).
FROM eclipse-temurin:17-jdk-focal

# The purpose of the following two instructions is to run the application with user privileges rather than root privileges to help mitigate any privilege-related vulnerabilities.
RUN addgroup animalguessergroup; adduser --ingroup animalguessergroup --disabled-password animalguesseruser
USER animalguesseruser

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
