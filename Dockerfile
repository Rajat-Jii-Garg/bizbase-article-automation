FROM n8nio/n8n:latest

USER root

# Render के लिए पोर्ट्स कॉन्फ़िगरेशन
ENV PORT=10000
EXPOSE 10000

# नोड के ज़रिए डायरेक्ट एग्जीक्यूशन ताकि पाथ एरर कभी न आए
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
