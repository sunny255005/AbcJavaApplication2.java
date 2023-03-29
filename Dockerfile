FROM openjdk:8  
RUN file="$(pwd)" && echo $file
RUN file="$(ls -al)" && echo $file
COPY . /opt/hi  
COPY ./ ./[^s]* .        # All files that don't start with 's'
COPY ./ ./s[^h]* .       # All files that start with 's', but not 'so'
COPY ./ ./sh[^l]* .      # All files that start with 'so', but not 'sol'
COPY ./ ./sha[^2]* .     # All files that start with 'sol', but not 'solv'
COPY ./ ./sha2[^5]* .    # All files that start with 'solv', but not 'solve'
COPY ./ ./sha25[^6]* .   # All files that start with 'solve', but not 'solver'
WORKDIR /opt/hi  
RUN javac FirstJava.java  
CMD ["java", "FirstJava"]  
