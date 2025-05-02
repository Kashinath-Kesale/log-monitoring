# Log Monitoring System using Grafana Stack

This project sets up a **Dockerized log aggregation and visualization system** using the **Grafana stack (Loki + Promtail + Grafana)**. It is built to collect, parse, and visualize structured JSON logs from robotic systems with real-time observability features.

---

## 🚀 Tech Stack

- **Promtail** – Log collector and shipper
- **Loki** – Centralized log aggregation backend
- **Grafana** – Log visualization and dashboard
- **Docker & Docker Compose** – Container orchestration
- **GitHub Actions** – CI/CD automation (optional)

---

## 📁 Project Structure

Desktop/
└── log-monitoring/
    ├── docker-compose.yml
    ├── promtail-config.yml
    ├── logs/sample.json
    └── .github/
        └── workflows/
            └── docker-deploy.yml

---

## ▶️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Kashinath-Kesale/log-monitoring.git
cd log-monitoring

## 🧪 STEP 2: Start the Stack
docker-compose up --build
