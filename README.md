# Log Monitoring System using Grafana Stack

This project sets up a **Dockerized log aggregation and visualization system** using the **Grafana stack (Loki + Promtail + Grafana)**. It is built to collect, parse, and visualize structured JSON logs from robotic systems with real-time observability features.

---

## 🚀 Tech Stack

- **Promtail** – Log collector and shipper  
- **Loki** – Centralized log aggregation backend  
- **Grafana** – Log visualization and dashboard  
- **Docker & Docker Compose** – Container orchestration  
- **GitHub Actions** – CI/CD automation

---

## 📁 Project Structure

```
Desktop/
└── log-monitoring/
    ├── docker-compose.yml
    ├── promtail-config.yml
    ├── logs/
    │   └── sample.json
    └── .github/
        └── workflows/
            └── docker-deploy.yml
```

---

## ▶️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Kashinath-Kesale/log-monitoring.git
cd log-monitoring
```

---

### 🧪 STEP 2: Start the Stack

Run the following command to build and start the Docker containers:

```bash
docker-compose up --build
```

---

### 3. Access Grafana

Open your browser and go to: [http://localhost:3000](http://localhost:3000)

**Login credentials:**
- **Username:** `admin`
- **Password:** `admin`

**Add a Loki data source:**
- **URL:** `http://loki:3100`

---

## 🔍 Sample Log Queries (LogQL)

Use these in the **Explore** tab in Grafana:

```logql
{job="robot_logs"}
{job="robot_logs", severity_text="CRITICAL"}
{job="robot_logs", instrumentation_scope="robot_utils"}
{job="robot_logs"} |= "error"
```

---

## ✨ Features

- Ingests structured logs in **JSON Lines (JSONL)** format  
- Filters and queries based on:
  - `severity_text`
  - `instrumentation_scope`
  - `observed_timestamp_rfc3339`
- Real-time log visualization and custom dashboard panels  
- Dockerized setup for portability and reproducibility  
- CI/CD-ready with GitHub Actions integration

---

## 🧠 Learning Outcomes

- Docker orchestration of observability tools  
- Promtail pipeline stages and log label extraction  
- Working with real-time log metrics in Grafana  
- Practical use of LogQL for log filtering and monitoring
