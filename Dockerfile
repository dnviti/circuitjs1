# Use the official Tomcat base image. Replace "9.0" with the Tomcat version you require.
FROM tomcat:9.0

# Set an environment variable for the version of the application
ENV WAR_FILE_NAME circuitjs1-war.war

# Optional: Set the timezone (if required)
# ENV TZ=UTC

# Copy the WAR file to Tomcat's webapps directory
# Assuming the WAR file is in the same directory as the Dockerfile during build
COPY $WAR_FILE_NAME /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Command to start Tomcat (inherited from the base image)
CMD ["catalina.sh", "run"]