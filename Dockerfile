FROM n8nio/n8n:latest

USER root

# रेंडर के लिए पोर्ट 10000 फिक्स करना
ENV N8N_PORT=10000
EXPOSE 10000

# n8n का अपना ऑफिशियल एंट्रीपॉइंट जो कल सक्सेसफुल चला था
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
