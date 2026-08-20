FROM n8nio/n8n:latest

# रेंडर को रूट परमिशन देना ताकि पाथ एरर न आए
USER root

# रेंडर के इंटरनल पोर्ट को सीधा 10000 असाइन करना
ENV N8N_PORT=10000
EXPOSE 10000

# पूरा फुल पाथ देकर नोड के साथ n8n को स्टार्ट करना
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
