FROM nginx:1.25.3
EXPOSE 80
EXPOSE 100
CMD ["nginx", "-g", "daemon off;"]