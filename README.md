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
- Concatenated several DataFrames into one, named `concatenated+df`. It combined data from our company DataFrame with the `Fear_index` column from the `fear_index_df` DataFrame and the `SPY_index` column from the `spy_index_df` DataFrame. 
    - After concatenation, the index of the `concatenated_df` was converted to a datetime index
- We shifted the target variable (`close` column), in the `concatenated_df` DataFrame by 5 periods into the future. 
    - This is commonly done in time series forecasting tasks to align predictor variables with their corresponding future outcomes. After shifting, rows with missing values were dropped from the DataFrame
- Calculated various technical indicators using the `finta` library and updated the DataFrame data:
    - A `20-period Simple Moving Average (SMA)` is calculated and assigned to a new column named 'MA'.
    - A `14-period Relative Strength Index (RSI)` is computed and assigned to a new column named 'RSI'.
    - Bollinger Bands are calculated correctly using the `BBANDS` function from `finta` with parameters for the period (20) and standard deviation multiplier (2).
    - The upper, middle, and lower bands of the Bollinger Bands are assigned to new columns named `BB_UPPER`, `BB_MIDDLE`, and `BB_LOWER`, respectively.
    - The index of the DataFrame data is converted to a datetime index.

- The model demonstrates meaningful predictive power at least 75% classification accuracy or 0.80 R-squared 
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
    - For each fold in the k-fold cross-validation loop:
        - A new neural network model is defined with two hidden layers and dropout regularization.
        - The model is compiled with the Adam optimizer and mean squared error loss.
        - The model is trained on the training data for 50 epochs.
        - The model's performance is evaluated on both training and testing data, and metrics including R-squared, mean absolute error (MAE), and mean squared error (MSE) are calculated.
        - The evaluation metrics for each model are appended to their respective lists.
    - After the cross-validation loop, the script prints the evaluation metrics for each selected model, including the train and test R-squared scores, MAE, and MSE.
- This approach allows for the comparison of multiple models trained and evaluated using k-fold cross-validation, providing insights into their performance and generalization ability.
- We scaled the entire dataset using StandardScaler from scikit-learn. Then, it defines a neural network model architecture with two hidden layers, each followed by dropout regularization. The model is compiled with the Adam optimizer and mean squared error loss function.
- Subsequently, the model is trained on the entire dataset for 50 epochs with a batch size of 32. Predictions are made sequentially on each data point, and the actual and predicted values are stored in a DataFrame named predictions_df.
- Finally, the index uniqueness in both the original dataset and predictions_df is ensured, and the DataFrame is displayed. This provides a comparison between the actual and predicted values of the target variable for each data point in the dataset.


## Benefits
- This analysis dashboard provides you with immediate, actionable insights, empowering informed decision-making to propel performance enhancement initiatives forward 

## Conclusion 
- Insert conclusion here 
