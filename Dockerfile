FROM ubuntu
ENV num=22 message="Hello!!"
RUN mkdir passingVariable
COPY CheckPrimeNumber.sh /passingVariable
RUN ls
WORKDIR /passingVariable
RUN chmod +x CheckPrimeNumber.sh
RUN echo "$message"
CMD ["~/CheckPrimeNumber.sh","number"]
