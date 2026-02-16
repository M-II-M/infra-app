# Структура
```
promtai-loki-grafana-simple/
├── docker-compose.yml          # Главный compose-файл
├── loki-config.yml             # Конфи Loki
├── promtail-config.yml         # Конфиг для сбора логов через Promtail
├── payment-service/            # Sample Node.js payment processing service
└── grafana/                    # Grafana configuration
    ├── provisioning/
    │   ├── dashboards/         # Импорты для дашбордов
    │   │   └── dashboards.yml
    │   └── datasources/        # Datasource для Loki
    │       └── loki.yml
    └── dashboards/             # подготовленный дашборд
        └── simple-dashboard.json
```

# Запуск
``` Shell
cd path/to/project
docker-compose up -d
```
