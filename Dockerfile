# Use Tomcat 9 as base image
FROM tomcat:9.0

# Copy your built WAR into Tomcat’s webapps folder
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Start Tomcat
CMD ["catalina.sh", "run"]

#FROM nginx:alpine

# Remove default nginx page
#RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML files into the container
#COPY index.html /usr/share/nginx/html/
