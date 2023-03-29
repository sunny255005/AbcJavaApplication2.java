FROM openjdk:8  
RUN file="$(ls -al)" && echo $file
COPY . /var/www/java  
WORKDIR /var/www/java  
RUN javac FirstJava.java  
CMD ["java", "FirstJava"]  
