FROM ubuntu:latest


# Set the working directory

WORKDIR /app


# Copy the weather script
COPY get-weather.sh /app/


# Install dependencies


RUN apt-get update && apt-get install -y \
    jq \
    curl \
    bc

RUN chmod +x /app/get-weather.sh



# Run the script
CMD ["./get-weather.sh"]