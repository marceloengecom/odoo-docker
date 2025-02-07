# Usa a imagem oficial do Odoo 18
FROM odoo:18.0

# Define as variáveis de ambiente (Railway usa env vars)
ENV HOST=${HOST}
ENV USER=${USER}
ENV PASSWORD=${PASSWORD}

# Cria diretórios necessários
RUN mkdir -p /mnt/extra-addons

# Expõe a porta padrão do Odoo
EXPOSE 8069

# Comando de inicialização
CMD ["odoo"]
