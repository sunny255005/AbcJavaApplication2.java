FROM openjdk:8  
RUN file="$(pwd)" && echo $file
RUN file="$(ls -al)" && echo $file
 
COPY  ./[^s]* .       
COPY  ./s[^h]* .       
COPY  ./sh[^l]* .    
COPY  ./sha[^2]* .     
COPY  ./sha2[^5]* .    
COPY  ./sha25[^6]* .
COPY . /opt/hi 
WORKDIR /opt/hi  
RUN javac FirstJava.java  
CMD ["java", "FirstJava"]  
