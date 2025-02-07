# Use an official Tomcat image from Docker Hub
FROM tomcat:8.5

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps/ROOT

# Copy your JSP file to the appropriate directory inside the container
COPY index.jsp /usr/local/tomcat/webapps/ROOT/

# Expose port 8080 to access the app from outside the container
EXPOSE 8080

# Start the Tomcat server when the container runs
CMD ["catalina.sh", "run"]
