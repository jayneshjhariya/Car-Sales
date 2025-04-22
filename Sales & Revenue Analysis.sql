--QUESTIONS--
	--a. What is the total revenue generated from all car sales?--
		
		SELECT ROUND(SUM(price), 2) AS total_sales
		FROM [Car Sales.xlsx - car_data]

	--b. Which car models generated the highest revenue?--
		
		SELECT model,
		ROUND(SUM(price), 2) AS revenue
		FROM [Car Sales.xlsx - car_data]
		GROUP BY model
		ORDER BY revenue DESC

	--c. Which car companies sold the most units?--

		SELECT company,
		COUNT(car_id) AS units_sold
		FROM [Car Sales.xlsx - car_data]
		GROUP BY Company
		ORDER BY units_sold DESC