# Customer Churn Prediction Project

## Project Overview
Predicting **customer churn** (who is likely to leave) using **machine learning**.  
Dataset: 7043 telecom customers, 21 features including demographics, services, and financials.  
Goal: Build a model to identify high-risk customers and generate actionable business insights.


## Skills & Tools
- **Python & Jupyter Notebook**  
- **Data Handling:** Pandas, NumPy  
- **Data Cleaning & Preprocessing:** Missing values, type conversions  
- **Feature Engineering & Encoding:** Label Encoding, Scaling  
- **Machine Learning:** Random Forest Classifier, SMOTE for class imbalance  
- **Evaluation & Visualization:** Accuracy, Confusion Matrix, F1-score, Feature Importance, Seaborn/Matplotlib  


## Workflow

1. **Data Loading & Exploration**  
   - Load CSV file and explore rows, columns, data types, missing values  
   - Understand distribution of target (`Churn`)  

2. **Data Cleaning & Preprocessing**  
   - Remove unnecessary columns (`customerID`)  
   - Convert `TotalCharges` from text → numeric  
   - Fill missing values with median  
   - Encode categorical features and target variable  

3. **Feature Scaling & Selection**  
   - Scale features for uniform mean and variance  
   - Separate inputs (`X`) and target (`y`)  

4. **Handling Class Imbalance**  
   - Apply **SMOTE** to balance churn classes  

5. **Model Training**  
   - Train **Random Forest Classifier**  
   - Adjust hyperparameters (`n_estimators=300, max_depth=10, class_weight={0:1,1:2}`)  

6. **Model Evaluation**  
   - Accuracy: 75%  
   - Confusion Matrix & Classification Report  
   - Evaluate precision, recall, F1-score  

7. **Feature Importance & Insights**  
   - Top drivers: `TotalCharges`, `MonthlyCharges`, `tenure`, `Contract`, `PaymentMethod`  
   - Visualize using bar plots  
   - Key insights: Higher monthly charges & shorter tenure → higher churn risk; Month-to-month contracts have higher churn probability  


## Outcome & Learnings
- Built a model that identifies customers likely to leave  
- Gained practical experience in **data cleaning, ML modeling, evaluation, and insights generation**  
- Developed transferable skills for real-world classification problems and business analytics  


