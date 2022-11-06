FROM grafana/grafana:latest

USER root 
RUN echo "[plugin.marcusolsson-csv-datasource]" >> /etc/grafana/grafana.ini 
RUN echo "allow_local_mode = true" >> /etc/grafana/grafana.ini
USER grafana
RUN grafana-cli plugins install marcusolsson-csv-datasource
