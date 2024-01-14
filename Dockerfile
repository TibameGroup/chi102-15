FROM python:3.9-slim

COPY  app.py .
RUN  pip install flask    
ENV FLASK_APP=app.py
EXPOSE 5000
CMD  ["flask","run","--host=0.0.0.0", "--port=5000"]
