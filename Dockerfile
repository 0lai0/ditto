FROM alpine
COPY quickstart.sh /
RUN chmod +x /quickstart.sh
ENV PORT 8080
EXPOSE 8080
CMD ["/quickstart.sh"]