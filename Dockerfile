FROM openjdk:8  
RUN file="$(pwd)" && echo $file
RUN file="$(ls -al)" && echo $file
COPY . /opt/hi  
WORKDIR /opt/hi  
RUN javac FirstJava.java  
CMD ["java", "FirstJava"]  
