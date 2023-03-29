FROM openjdk:8  
RUN file="$(ls -1 /tmp/dir)" && echo $file
COPY . /var/www/java  
WORKDIR /var/www/java  
RUN javac FirstJava.java  
CMD ["java", "FirstJava"]  
