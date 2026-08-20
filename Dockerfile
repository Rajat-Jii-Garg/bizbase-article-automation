FROM n8nio/n8n:latest

USER root

# Render के लिए पोर्ट 10000 सेट करना ज़रूरी है
ENV PORT=10000
EXPOSE 10000

# पूरा पाथ देकर n8n को स्टार्ट करना ताकि कमांड नॉट फाउंड एरर न आए
CMD ["/usr/local/bin/n8n", "start"]
