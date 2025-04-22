--QUESTIONS--
	--a. Which dealer region had the highest total sales?--

		SELECT dealer_region,
		SUM(price) AS total_sales
		FROM [Car Sales.xlsx - car_data]
		GROUP BY Dealer_Region
		ORDER BY total_sales DESC

	--b. Which dealer sold the most cars?--

		SELECT dealer_name,
		COUNT(car_id) AS units_sold
		FROM [Car Sales.xlsx - car_data]
		GROUP BY Dealer_Name
		ORDER BY units_sold DESC