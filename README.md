# Stock Market Analysis 
![alt text](<Stock Market Image.jpeg>)

## Background
This project was completed by Karan Dogra, Thotadamoole Shreenidhi, Anthony Abushacra, Amy Larsen, & Paolo Arciaga. 

We used historical financial data from `April 2014 - April 2024`, on 10 technology & automotive companies: 
- Amazon `AMZN`
- Apple `AAPL`
- General Motors `GM`
- Google `GOOG`
- Honda `HMC`
- Meta `META`
- Microsoft `MSFT`
- Tesla `TSLA`
- Toyota `TM`
- Volkswagen `VWAGY`

Data Source: [Yahoo Finance](https://finance.yahoo.com/) 

## Objective
- Forecast stock prices for our 10 specified companies using historical data and market indicators
- Provide into potential future trends based on predictive modeling techniques

## Data Model Implementation 
- We preprocessed our data, computed technical indicators, constructed a neural network model using `TensorFlow's Sequential API`, trained the model with early stopping, evaluated its performance using metrics like mean squared error and R-squared score, and potentially using `KFold cross-validation` for more reliable performance estimates. Additionally, there's provision for replicating the trained model.
- Loaded our financial data from four CSV files, and read our data into pandas DataFrames
- We converted the index of the `fedfunds_df` to a datetime index using the `pd.to_datetime()` function. Afterwards, it resampled the DataFrame to have a daily frequency and filled the missing values forward to create a new DataFrame named `fedfunds_df_monthly`
- Concatenated several DataFrames into one, named `concatenated_df`. It combined data from our company DataFrame with the `Fear_index` column from the `fear_index_df` DataFrame and the `SPY_index` column from the `spy_index_df` DataFrame. 
    - After concatenation, the index of the `concatenated_df` was converted to a datetime index
- Calculated various technical indicators using the `finta` library and updated the DataFrame data:
    - A `20-period Simple Moving Average (SMA)` is calculated and assigned to a new column named 'MA'.
    - A `14-period Relative Strength Index (RSI)` is computed and assigned to a new column named 'RSI'.
    - Bollinger Bands are calculated correctly using the `BBANDS` function from `finta` with parameters for the period (20) and standard deviation multiplier (2).
    - The upper, middle, and lower bands of the Bollinger Bands are assigned to new columns named `BB_UPPER`, `BB_MIDDLE`, and `BB_LOWER`, respectively.
    - The index of the DataFrame data is converted to a datetime index.
- Defined the features and target variable for modeling. The features `X` are obtained by dropping the "Close" column from the concatenated_df DataFrame.The target variable `y` is assigned the values from the "Close" column of the concatenated_df DataFrame.
- Defined a date cutoff of `2022-04-30` to split the data into training and testing sets: Data before or on April 30, 2022, is assigned to the training set (`X_train` and `y_train`). Data after April 30, 2022, is assigned to the testing set (X_test and y_test).
## K-Fold Cross-Validation to Evaluate the Performance of a Neural Network Model
- The number of folds is set to 10.
- Two lists are initialized to store the R-squared scores for training and testing data.
- A KFold object is created with 10 splits and shuffling enabled.
- The model architecture is defined using TensorFlow's Sequential API, consisting of two hidden layers with dropout regularization.
- The model is compiled using the Adam optimizer and mean squared error loss function.
- Training is performed with a smaller learning rate over 50 epochs.
- For each fold in the k-fold cross-validation loop:
    - The training and testing data are split based on the current fold indices.
    - The model is trained on the training data and evaluated on both training and testing data.
    - R-squared scores for both training and testing data are calculated and appended to their respective lists.
- Finally, the average R-squared scores for training and testing data are calculated and printed.
- This aims to assess the model's performance using cross-validation, which provides a more reliable estimate of its generalization ability compared to a single train-test split.

## Predictive Power 
Our model meets the requirement of a predictive power of at least 75% classification or 0.80 R-squared. Results per company can be seen below: 
- Amazon `AMZN`
    - ![alt text](<AMZN 10 Models.png>)
- Apple `AAPL`
    - ![alt text](<AAPL 10 Models.png>)
- General Motors `GM`
    - ![alt text](<GM 10 Models.png>)
- Google `GOOG`
    - ![alt text](<GOOG 10 Models.png>)
- Honda `HMC`
    - ![alt text](<HMC 10 Models.png>)
- Meta `META`
    - ![alt text](<META 10 Models.png>)
- Microsoft `MSFT`
    - ![alt text](<MSFT 10 Models.png>)
- Tesla `TSLA`
    - ![alt text](<TSLA 10 Models.png>)
- Toyota `TM`
    - ![alt text](<TM 10 Models.png>)
- Volkswagen `VWAGY`
    - ![alt text](<VWAGY 10 Models.png>)

## Data Model Optimization
- We initialized lists to store evaluation metrics for multiple models trained using k-fold cross-validation:
    - For each fold in the `k-fold cross-validation` loop:
        - A new `neural network model` is defined with two hidden layers and dropout regularization.
        - The model is compiled with the Adam optimizer and mean squared error loss.
        - The model is trained on the training data for 50 epochs.
        - The model's performance is evaluated on both training and testing data, and metrics including `R-squared`, mean absolute error `MAE`, and mean squared error `MSE` are calculated.
        - The evaluation metrics for each model are appended to their respective lists.
    - After the cross-validation loop, the script prints the evaluation metrics for each selected model, including the train and test R-squared scores, MAE, and MSE.
- This approach allows for the comparison of multiple models trained and evaluated using k-fold cross-validation, providing insights into their performance and generalization ability.
- We scaled the entire dataset using `StandardScaler` from `scikit-learn`. Then, it defines a neural network model architecture with two hidden layers, each followed by dropout regularization. The model is compiled with the Adam optimizer and mean squared error loss function.
- Subsequently, the model is trained on the entire dataset for 50 epochs with a batch size of 32. Predictions are made sequentially on each data point, and the actual and predicted values are stored in a DataFrame named predictions_df.
- Finally, the index uniqueness in both the original dataset and predictions_df is ensured, and the DataFrame is displayed. This provides a comparison between the actual and predicted values of the target variable for each data point in the dataset.

## Database 
- **Database Setup**: Tables were created for each company's stock data, including fields for date, volume, Fear Index, SPY Index, FEDFUNDS, Target, MA, RSI, and Bollinger Bands (BB_UPPER, BB_MIDDLE, BB_LOWER).
    - ![alt text](<dta loading process for all tables.png>)
- **Data Import and Verification**: After table creation, data import was performed, and the correctness of the import was verified by querying the tables.
    - ![alt text](<data loading from CSV.png>)
- **Data Integrity Maintenance**: A mechanism to reset the database was implemented by dropping existing tables before creating new ones, ensuring data integrity and consistency during re-imports.
- **Table Validation**: Each table's structure and data were validated by selecting all records from each table to confirm the successful creation and import of data.
    - ![alt text](<apple table creation and data fetching.png>)
- **Primary Key Enforcement**: Date was designated as the primary key for each table, ensuring uniqueness and efficient data retrieval.
- **Database Readiness**: With the completion of table creation and data import, the database is now primed for further analysis and querying.

## Benefits
- This analysis dashboard provides you with immediate, actionable insights, empowering informed decision-making to propel performance enhancement initiatives forward 

## Conclusion 
- **Comprehensive Analysis**: Leveraging historical financial data and market indicators, we conducted a thorough analysis encompassing ten prominent technology and automotive companies.
- **Advanced Modeling Techniques**: By employing TensorFlow's Sequential API and k-fold cross-validation, we developed and optimized neural network models to forecast stock prices with high accuracy.
- **Meaningful Predictive Power**: Our models exhibit substantial predictive capabilities, achieving at least 75% classification accuracy or an R-squared score of 0.80 across various companies.
- **Data Model Optimization**: Through iterative refinement and evaluation of multiple models, we ensured robust performance and generalization ability, considering metrics such as R-squared, MAE, and MSE.
- **Scalability and Deployment**: We scaled the dataset for model training and seamlessly deployed the trained models for real-time predictions, facilitating agile decision-making.
- **Actionable Insights**: This analysis dashboard delivers actionable insights promptly, empowering stakeholders with the necessary information to drive performance enhancement initiatives forward.
