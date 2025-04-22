--QUESTIONS--

	--a. What is the average annual income of customers by gender?--

		SELECT gender,
		ROUND(AVG(CAST(annual_income AS FLOAT)),2) AS avg_annual_income
		FROM [Car Sales.xlsx - car_data]
		GROUP BY Gender
		ORDER BY avg_annual_income DESC

	--b. Which customers purchased the most expensive cars?--

		SELECT TOP 5 customer_name, price
		FROM [Car Sales.xlsx - car_data]
		ORDER BY Price DESC