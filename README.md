


# 🚴 Retail Sales & Inventory Intelligence System



An end-to-end data analytics solution for retail business intelligence, transforming raw transactional data into actionable insights through data profiling, SQL database management, and machine learning-powered customer segmentation.

## 📊 Project Overview

This project analyzes **10,655 records** across 10 interconnected data tables for a multi-store bicycle retail chain operating in California, New York, and Texas. Through a comprehensive three-phase approach, we identified critical business insights including a **91% one-time buyer crisis** and developed targeted marketing strategies with **321% projected ROI**.

### Key Achievements
- ✅ Improved data quality from **87% to 98%** through systematic profiling
- ✅ Built production-ready **MySQL database** with 9 normalized tables
- ✅ Segmented **1,445 customers** into 4 actionable personas using K-Means clustering
- ✅ Generated **$274,081 net profit** potential from $85,366 marketing investment
- ✅ Identified top staff member generating **$770K (35%)** of total revenue

## 🎯 Business Impact

| Metric | Value |
|--------|-------|
| **Total Revenue** | $2,207,015.62 |
| **Total Orders** | 1,615 orders |
| **Unique Customers** | 1,445 customers |
| **Average Order Value** | $1,366.68 |
| **Customer Retention Rate** | 9.0% (Critical Issue) |
| **Data Quality Score** | 98% (Post-Cleanup) |

### Critical Findings
🔴 **Customer Retention Crisis**: 91% of customers are one-time buyers (1,315/1,445)  
🟢 **High-Value Segment**: 8.9% Champions segment contributes 30.1% of revenue ($663K)  
🟡 **Geographic Concentration**: 68% of revenue from New York state  
⚠️ **Staff Risk**: Top 2 employees generate 68% of company revenue

## 🏗️ Project Structure

```
Retail-Sales-Inventory-Intelligence-System/
│
├── Phase_1_Data_Profiling/
│   ├── data_profiling.py              # Statistical analysis & quality assessment
│   ├── data_cleanup.py                # Remove duplicates, convert data types
│   └── quality_report.pdf             # 87% → 98% quality improvement report
│
├── Phase_2_SQL_Database/
│   ├── schema_creation.sql            # CREATE TABLE statements for 9 tables
│   ├── data_import.sql                # Data loading with FK constraints
│   ├── business_queries.sql           # 15+ analytical queries
│   ├── SQL_VIEW_Sales_Performance_Master.sql  # Master view for analytics
│   └── query_results/                 # Staff performance, regional sales
│
├── Phase_3_Customer_Segmentation/
│   ├── Customer_Segmentation.ipynb    # RFM analysis & K-Means clustering
│   ├── customer_segments.csv          # Output: customer_id + segment assignment
│   └── visualizations/
│       ├── 3D-Interactive-RFM-Customer-Segments.jpg
│       ├── Customer-Segment-Size.jpg
│       └── Customer-Segment-Characteristics.jpg
│
├── data/
│   ├── raw/                           # Original 9 CSV files (10,655 records)
│   ├── cleaned/                       # Post-Phase 1 cleaned datasets
│   └── v_Sales_Performance_Master.csv # Exported SQL master view
│
├── reports/
│   ├── Phase_1_Data_Profiling.pdf
│   ├── Phase_2_SQL_Database.pdf
│   ├── Phase_3_Customer_Segmentation.pdf
│   └── Complete_Project_Report.pdf    # Executive summary & recommendations
│
├── README.md
└── requirements.txt
```

## 🛠️ Technology Stack

### Phase 1: Data Profiling & Quality Assessment
- **Python 3.10+**: Data manipulation and analysis
- **Pandas 2.0+**: DataFrame operations, statistical profiling
- **NumPy**: Numerical computations

### Phase 2: SQL Database Management
- **MySQL Community Edition 8.0+**: Relational database management
- **MySQL Workbench**: GUI for schema design and query execution
- **SQL**: Star Schema design with 9 tables, 15 foreign keys

### Phase 3: Customer Segmentation
- **Scikit-learn**: K-Means clustering algorithm
- **StandardScaler**: Feature normalization (z-score)
- **Plotly**: Interactive 3D visualizations
- **Matplotlib/Seaborn**: Statistical charts

## ⚙️ Installation & Setup

### Prerequisites
```
# Python 3.10 or higher
python --version

# MySQL 8.0 or higher
mysql --version
```

### Step 1: Clone Repository
```
git clone https://github.com/yourusername/Retail-Sales-Inventory-Intelligence-System.git
cd Retail-Sales-Inventory-Intelligence-System
```

### Step 2: Install Python Dependencies
```
pip install -r requirements.txt
```

**requirements.txt:**
```
pandas>=2.0.0
numpy>=1.24.0
scikit-learn>=1.3.0
plotly>=5.14.0
matplotlib>=3.7.0
seaborn>=0.12.0
jupyter>=1.0.0
mysql-connector-python>=8.0.33
```

### Step 3: Set Up MySQL Database
```
# Connect to MySQL
mysql -u root -p

# Run schema creation script
source Phase_2_SQL_Database/schema_creation.sql

# Import cleaned data
source Phase_2_SQL_Database/data_import.sql
```

### Step 4: Configure Database Connection
Create `config.py`:
```
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'your_password',
    'database': 'retail_sales'
}
```

## 🚀 Usage

### Phase 1: Data Profiling
```
# Run data quality assessment
python Phase_1_Data_Profiling/data_profiling.py

# Execute data cleanup
python Phase_1_Data_Profiling/data_cleanup.py

# Output: Quality score improved from 87% to 98%
# - Removed 170 duplicate orders
# - Converted date columns to datetime format
# - Excluded unusable phone field (87.7% null)
```

### Phase 2: SQL Analytics
```
-- Connect to database
USE retail_sales;

-- Run staff performance query
SOURCE Phase_2_SQL_Database/business_queries.sql;

-- Query master view
SELECT * FROM v_Sales_Performance_Master
WHERE store_region = 'NY'
ORDER BY net_sales DESC
LIMIT 10;
```

### Phase 3: Customer Segmentation
```
# Open Jupyter Notebook
jupyter notebook

# Run Customer_Segmentation.ipynb
# This will:
# 1. Calculate RFM metrics for 1,445 customers
# 2. Apply K-Means clustering (k=4)
# 3. Generate customer_segments.csv
# 4. Create 3D visualizations
```

## 📈 Key Results

### Customer Segments (K-Means Clustering)

| Segment | Count | % | Avg Recency | Avg Frequency | Avg Monetary | Total Revenue | Priority |
|---------|-------|---|-------------|---------------|--------------|---------------|----------|
| **Champions (High-Value)** | 129 | 8.9% | 659 days | 1.0 order | $5,144 | $663,564 | 🔴 Critical Win-Back |
| **Loyal Customers (Mid-Value)** | 130 | 9.0% | 247 days | 2.3 orders | $3,087 | $401,281 | 🟢 Retention Program |
| **New/Potential Customers** | 618 | 42.8% | 483 days | 1.0 order | $967 | $597,643 | 🟡 Activation Campaign |
| **At Risk/Churned** | 568 | 39.3% | 888 days | 1.0 order | $960 | $545,524 | ⚪ Minimal Investment |

### Marketing Campaign ROI Projections

| Campaign | Investment | Projected Revenue | Net Profit | ROI |
|----------|-----------|-------------------|------------|-----|
| Champions Win-Back | $20,000 | $97,736 | $77,736 | **389%** |
| Loyal Retention Program | $54,866 | $209,329 | $154,463 | **281%** |
| New/Potential Activation | $10,500 | $52,382 | $41,882 | **399%** |
| **Total Portfolio** | **$85,366** | **$359,447** | **$274,081** | **321%** |

### Staff Performance Leaderboard

| Rank | Staff Member | Store | Orders | Net Sales | % of Total |
|------|--------------|-------|--------|-----------|------------|
| 1 | Marcelene Boyer | Baldwin Bikes | 553 | $770,157 | 34.9% |
| 2 | Venita Daniel | Baldwin Bikes | 540 | $730,161 | 33.1% |
| 3 | Genna Serrano | Santa Cruz Bikes | 184 | $273,720 | 12.4% |

## 🎨 Visualizations

### 3D Interactive RFM Customer Segments
![3D RFM Segmentation](Phase_3_Customer_Segmentation/visualizations/3D-Interactive-RFM-Customer-Segments.jpg)

**Insights:**
- **Blue dots (Loyal Customers)**: Only segment floating above frequency=1 floor - confirmed repeat buyers
- **Green dots (Champions)**: Tall (high monetary) but pushed back (high recency) - at-risk high spenders
- **Yellow/Red dots**: One-time buyers separated only by recency (time since last purchase)

### Customer Segment Size & Value Treemap
![Segment Treemap](Phase_3_Customer_Segmentation/visualizations/Customer-Segment-Size.jpg)

**Key Findings:**
- Rectangle size = customer count
- Color intensity = total revenue contribution
- Champions (8.9% of customers) generate 30.1% of revenue (darkest green)

## 🔍 Detailed Phase Summaries

### Phase 1: Data Profiling (Data Quality: 87% → 98%)
**Objectives:** Establish baseline quality, identify structural issues, prepare clean datasets

**Critical Issues Resolved:**
1. **Orders Table Duplicates**: Removed 170 duplicate order IDs (10.5% inflation)
2. **Date Format Errors**: Converted 3 date columns from strings to datetime
3. **Missing Data**: Documented 87.7% null phone values, excluded from analysis
4. **Data Type Inconsistencies**: Fixed staff.manager_id from float64 to nullable integer

**Deliverables:**
- Data profiling report with statistical summaries for all 10 tables
- Quality improvement plan (4 priorities)
- Entity-Relationship Diagram (ERD)
- Cleaned CSV files ready for SQL import

### Phase 2: SQL Database (9 Tables, 15+ Queries, 1 Master View)
**Objectives:** Build normalized database, develop business intelligence queries

**Schema Design:**
- **Star Schema Pattern**: 3 Fact tables (orders, order_items, stocks) + 6 Dimension tables
- **Data Integrity**: 15 foreign key relationships, 100% referential integrity
- **Master View**: v_Sales_Performance_Master (4,325 rows × 30 columns)

**Business Intelligence Queries:**
1. Staff Performance Analysis (revenue per employee)
2. Top-Selling Brands by Region (geographic preferences)
3. Low Stock Inventory Report (reorder alerts)
4. Delayed Shipments Analysis (fulfillment efficiency)
5. Category Profitability Analysis

**Key Findings:**
- New York generates 68% of revenue ($1.5M)
- Trek brand leads with 48% market share ($1.06M)
- 119 products require immediate reordering (stock < 5 units)
- 18.9% orders delayed by exactly 1 day (systematic bottleneck)

### Phase 3: Customer Segmentation (K-Means, k=4, 1,445 Customers)
**Objectives:** Apply machine learning to identify customer personas, enable targeted marketing

**RFM Methodology:**
- **Recency**: Days since last purchase (Lower = Better)
- **Frequency**: Total unique orders (Higher = Better)
- **Monetary**: Total net sales (Higher = Better)

**Machine Learning:**
- Algorithm: K-Means clustering with k=4 clusters
- Preprocessing: StandardScaler normalization (mean=0, std=1)
- Random State: 42 (reproducible results)

**Business Personas Identified:**
1. **Champions (High-Value)**: $5,144 avg spend but 659 days inactive - **urgent win-back needed**
2. **Loyal Customers (Mid-Value)**: Only repeat buyers (2.3 orders avg) - **retention priority**
3. **New/Potential Customers**: Largest segment (42.8%) - **moderate reactivation opportunity**
4. **At Risk/Churned**: Effectively lost customers - **minimal investment**

## 🎯 Strategic Recommendations

### Immediate Actions (Month 1-2)
1. ✅ **Launch Champions Win-Back Campaign**
   - Target: 129 customers, $663K revenue at risk
   - Tactic: 3-email sequence with 20% discount offer
   - Timeline: 2-week campaign
   
2. ✅ **Implement VIP Loyalty Program**
   - Target: 130 loyal customers
   - Benefits: Points system, free shipping, early access
   - Goal: Increase frequency from 2.3 to 3.5 orders/year

3. ✅ **Fix Customer Retention Crisis**
   - Conduct satisfaction survey for recent buyers
   - Identify root causes of 91% one-time buyer rate
   - Implement post-purchase email sequence (Days 3, 7, 14, 30)

### Medium-Term Initiatives (Month 3-6)
- Category-based reactivation campaigns for New/Potential segment
- Staff mentorship program (top performers train new hires)
- Inventory optimization based on turnover ratios
- Address 18.9% shipment delay bottleneck

### Long-Term Strategy (Phase 4 Preview)
- **Predictive Churn Modeling**: Classification model predicting which Loyal customers will become At Risk
- **Customer Lifetime Value (LTV) Prediction**: Regression model optimizing acquisition spend
- **Product Recommendation Engine**: Collaborative filtering for personalized cross-sells
- **Power BI Integration**: Interactive dashboards with drill-down capabilities

## 📚 Documentation

Comprehensive LaTeX reports available in `/reports` directory:
- `Phase_1_Data_Profiling.pdf` - 17 pages, detailed quality assessment
- `Phase_2_SQL_Database.pdf` - 25 pages, schema design + query library
- `Phase_3_Customer_Segmentation.pdf` - 30 pages, ML methodology + visualizations
- `Complete_Project_Report.pdf` - 40 pages, executive summary + ROI projections

## 🤝 Contributing

Contributions welcome! Please follow these steps:
1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request



## 🏆 Acknowledgments

- Dataset: Retail sales transaction data (2016-2018)
- Tools: Python, MySQL, Scikit-learn, Plotly
- Methodology: RFM Analysis, K-Means Clustering, Star Schema Design
- Inspired by: Data-driven retail analytics best practices

---

**⭐ Star this repository if you found it helpful!**

*Last Updated: October 22, 2025*
```



