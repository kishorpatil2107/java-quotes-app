FROM eclipse-temurin:17-jdk

LABEL maintainer="trainwithshubham@gmail.com"
LABEL version="1.0"
LABEL description="A Java Quotes application"

WORKDIR /app

# copy project sources and data into the container
COPY . /app

# compile all Java sources into the out/ directory
RUN javac -d out $(find src -name '*.java' -print)

# run the Main class from the compiled output
EXPOSE 8000
CMD ["java", "-cp", "out", "Main"]
