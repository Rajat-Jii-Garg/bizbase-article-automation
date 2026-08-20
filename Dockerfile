FROM n8nio/n8n:latest

# रेंडर के इंटरनल पोर्ट को सीधा 10000 असाइन करना
ENV N8N_PORT=10000
EXPOSE 10000

CMD ["n8n", "start"]
