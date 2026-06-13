# 📊 End-to-End Sales Analytics Project

A complete data analytics project built on the **Superstore dataset (~51K rows)** covering the full analytics stack — from raw data to interactive dashboard.

**Tools used:** Python • MySQL • Power BI

---

## 🚀 Live Dashboard Preview

![Sales Analytics Dashboard](https://github.com/codebyavneesh/end-to-end-sales-analytics-project/blob/main/Sales-Analytics-Dashboard-Project/Dashboard_image.png)

---

## 📁 Project Structure

```
end-to-end-sales-analytics-project/
│
├── Sales-Analytics-Dashboard-Project/
│   ├── Dataset/
│   │   └── superstore.csv                  # Raw dataset (~51K rows)
│   ├── Reports/
│   │   ├── category_sales.csv
│   │   ├── top_customers.csv
│   │   ├── monthly_sales_trend.csv
│   │   └── loss_making_product.csv
│   ├── sales-analytics-project.ipynb       # Python EDA notebook
│   ├── mysql+python_integration.ipynb      # MySQL + Python notebook
│   ├── sales-analytics-project.sql         # All MySQL queries
│   └── Dashboard_image.png                 # Power BI dashboard screenshot
└── README.md
```

---

## 🛠️ Tech Stack

| Tool | Usage |
|------|-------|
| Python (Pandas, NumPy) | Data cleaning, EDA, analysis |
| Matplotlib, Seaborn | Data visualization |
| MySQL | Database creation, SQL queries, Views |
| SQLAlchemy | MySQL + Python integration |
| Power BI | Interactive dashboard |

---

## 📂 Dataset

- **Source:** Superstore Sales Dataset
- **Rows:** ~51,000
- **Columns:** 26
- **Key fields:** Order Date, Sales, Profit, Category, Region, Customer Name, Ship Mode, Discount

---

## 🔍 Analysis Performed

### 🐍 Python EDA (`sales-analytics-project.ipynb`)
- Data loading and shape check
- Null values & duplicate detection
- Outlier identification using IQR (Sales, Profit, Discount)
- Total Revenue, Profit & Profit Margin calculation
- Average Order Value
- Revenue per Customer & per Product
- Monthly Revenue Growth Rate
- Monthly Sales Trend
- Seasonal Pattern Analysis
- Best consistent performing months
- Month-over-Month growth
- Top 10 Products by Revenue & Profit
- Bottom 10 Products by Profit
- High Revenue but Low Profit products
- Low Revenue but High Profit products
- Category-wise Profit Margin
- Top 20 Customers by Revenue & Profit
- Repeat vs One-Time Customers
- Customer Lifetime Value (CLV)
- Customer Segmentation (High / Medium / Low Value)
- Loss-generating customers
- Region-wise Revenue & Profit
- State-wise Revenue & Profit Ranking
- Loss-making States identification
- City-wise Profitability Analysis
- Discount vs Profit correlation
- Discount range profitability analysis
- High Loss Cases by discount range
- Category-wise Discount Effect
- Shipping Mode-wise Revenue & Profit
- Average Delivery Time Analysis
- Fastest vs Most Profitable Shipping Mode
- Shipping Cost vs Profit impact

### 🗄️ MySQL + Python (`mysql+python_integration.ipynb`)
- MySQL database connection via SQLAlchemy
- Total Revenue fetch from MySQL
- Top 10 Products chart from SQL query
- Monthly Sales Trend plot
- Region-wise Profit visualization
- Customer Segmentation dashboard visuals
- SQL View creation (`top_customers`) and Python read
- CSV Report generation

---

## 🗃️ SQL Highlights (`sales-analytics-project.sql`)

```sql
-- Database & Table creation
CREATE DATABASE sales_analyticsDB;

-- SQL View for Top Customers
CREATE VIEW top_customers AS
    SELECT customer_name, SUM(sales) AS total_sales
    FROM superstore
    GROUP BY customer_name
    ORDER BY total_sales DESC;

-- Category-wise Sales
SELECT category, SUM(sales) AS total_sales
FROM superstore
GROUP BY category;

-- Top 10 Customers
SELECT customer_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT MONTHNAME(order_date) AS Month, SUM(sales) AS total_sales
FROM superstore
GROUP BY Month;

-- Loss Making Products
SELECT product_name, SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
HAVING total_profit < 0;
```

---

## 📊 Power BI Dashboard

**Interactive dashboard with:**
- KPI Cards — Total Revenue (13M), Total Profit (1M), Profit Margin % (11.50), Avg Order Value (505.70)
- Top Products by Revenue (Horizontal Bar)
- Category-wise Sales Contribution (Donut Chart)
- Monthly Sales Trend (Line Chart)
- Region-wise Profit (Bar Chart)
- Segment-wise Sales (Bar Chart)
- Profit by Discount (Scatter Plot)
- Slicers — Year, Category, Region, Ship Mode

---

## 📈 Key Insights

- **Total Revenue:** 13M | **Total Profit:** 1M | **Profit Margin:** 11.50%
- **Technology** is the highest revenue-generating category
- **Consumer segment** dominates sales across all regions
- Excessive discounting (>40%) leads to negative profit
- **Standard Class** shipping is most used but **First Class** has higher profitability
- Several high-revenue products have low/negative profit margins

---

## ▶️ How to Run

**Python Notebooks:**
```bash
pip install pandas numpy matplotlib seaborn sqlalchemy mysql-connector-python
jupyter notebook
```

**MySQL Setup:**
```sql
CREATE DATABASE sales_analyticsDB;
-- Run sales-analytics-project.sql file in MySQL Workbench
```

**Power BI:**
- Open `Dashboard_image.png` to preview
- Connect Power BI Desktop to `superstore.csv` to explore interactively

---

## 👤 Author

**Avneesh**
- GitHub: [@codebyavneesh](https://github.com/codebyavneesh)
- LinkedIn: [linkedin.com/in/codebyavneesh](https://linkedin.com/in/codebyavneesh)

---

⭐ **If you found this project helpful, please give it a star!**
