--QUESTIONS--
	--a. What are the most popular body styles among customers?--

		SELECT body_style,
		COUNT(body_style) AS popularity
		FROM [Car Sales.xlsx - car_data]
		GROUP BY Body_Style
		ORDER BY popularity DESC

	--b. How does transmission type affect average car price?--

		SELECT transmission,
		AVG(price) AS avg_sales
		FROM [Car Sales.xlsx - car_data]
		GROUP BY transmission
		ORDER BY avg_sales DESC