# ⚡ Visualization Tool for Electric Vehicle Charge and Range Analysis

<p align="center">
  <img src="Tableau_logo.png" alt="Tableau Logo" width="400"/>
</p>

> An interactive Tableau-powered dashboard for analyzing EV charging patterns, battery performance, and real-world range efficiency.

🌐 **Live Website:** [https://ev-analysis-tableau.netlify.app/](https://ev-analysis-tableau.netlify.app/)

---

## 📌 Overview

Electric Vehicles (EVs) are rapidly transforming the transportation industry. Modern EV systems combine electrical propulsion, battery storage, sensors, software, and data analytics to create intelligent mobility solutions.

This project analyzes EV charging patterns, battery performance, and vehicle efficiency using interactive Tableau dashboards. The goal is to provide insights that support energy planning, fleet management, and informed consumer decisions — built on a dataset of **103 real EV models** across major global manufacturers.

---

## 🔍 Key Insights

| Metric | Value |
|--------|-------|
| 🔋 Avg. Efficiency | 189 Wh/km |
| 🛣️ Avg. Range | 210 miles per charge |
| ⚡ Avg. Fast Charge Speed | 457 km/h |
| 🚗 EV Models Analyzed | 103 |
| 🏆 Longest Range | Tesla Roadster — 970 km |
| ✅ Rapid Charge Capable | 95% of models |

---

## 📁 Folder Structure

```
Visualization-Tool-for-Electric-Vehicle-Charge-and-Range-Analysis/
│
├── DB Files/                   # Database and processed data files
│
├── Dashboard Files/            # Tableau workbook files (.twb / .twbx)
│
├── Dataset/                    # Raw and cleaned EV dataset (CSV)
│
├── Documentation/              # Project report, references, and writeups
│
├── Stories/                    # Tableau story files and narrative views
│
├── Tableau_Images/             # Screenshots and exports of dashboard views
│
├── Web Integration/            # Website source code (HTML/CSS/JS)
│
├── documents/                  # Supporting documents and presentations
│
└── README.md                   # Project overview (this file)
```

---

## 🖥️ Dashboard

The interactive Tableau dashboard contains multiple views and stories built from the EV dataset:

| # | Visualization | Description |
|---|--------------|-------------|
| 1 | **Charging Stations by Region & Type** | Bar chart showing total charging stations across regions (Central, East, North, South, West, Other), broken down by station type |
| 2 | **EV Charging Stations Map of India** | Geographic bubble map plotting charging station density across Indian states with total counts per location |
| 3 | **EV Brand Positioning: Range vs Top Speed** | Bubble chart comparing average range (km) vs average top speed for each brand — bubble size represents average price |
| 4 | **Brand Performance — Max Top Speed** | Horizontal bar chart ranking all EV brands by maximum top speed (Tesla leads at 410 km/h) |
| 5 | **Price vs Top Speed Scatter** | Scatter plot of individual models — price (€) on Y-axis vs top speed on X-axis, colored by drivetrain (AWD / FWD / RWD) |
| 6 | **Body Style Analysis (By Percentage)** | Treemap showing distribution of body styles — SUV dominates at 44%, followed by Hatchback (29%), Sedan (10%) |
| 7 | **Brand by Powertrain** | Stacked bar chart showing each brand's share of AWD, FWD, and RWD drivetrain configurations |
| 8 | **Model Count by Brand** | Running sum bar chart ranking brands by total number of EV models — Volkswagen leads with 97, followed by Tesla at 89 |
| 9 | **Brand Performance: Avg Efficiency vs Avg Range** | Bubble scatter plot comparing efficiency (Wh/km) against average range (km) per brand — Lucid and Lightyear stand out as top performers |

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Tableau Public | Data visualization & dashboarding |
| HTML / CSS / JS | Web integration & hosting |
| Netlify | Website deployment |
| Git | Version control |
| GitHub | Repository hosting & collaboration |
| CSV (ElectricCarData) | Dataset source |

---

## 👥 Team

**Institution:** KIET Group of Institutions, Deemed to be University, Ghaziabad

**Department:** Computer Science & Information Technology (CSIT) — Section C

| Name | Roll Number | Branch / Section |
|------|-------------|-----------------|
| Rupesh Rakesh Chaurasia | 202401100500148 | CSIT / C |
| Shefali Yadav | 202401100500169 | CSIT / C |
| Shikhar Dixit | 202401100500170 | CSIT / C |
| Vishal Nimoliya | 202401100500210 | CSIT / C |

---

## 🚀 Getting Started

1. Visit the live site: [https://ev-analysis-tableau.netlify.app/](https://ev-analysis-tableau.netlify.app/)
2. Navigate to the **Dashboard** section
3. Use Tableau filters to explore charging, range, and efficiency data
4. To run locally — open `Web Integration/index.html` in any browser

---

## 📄 License

This project was developed for academic purposes at KIET Group of Institutions.  
© 2024 — Rupesh Rakesh Chaurasia, Shefali Yadav, Shikhar Dixit, Vishal Nimoliya
