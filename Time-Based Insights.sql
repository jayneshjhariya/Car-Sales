--QUESTIONS--
--a. How have sales trended over time (monthly or yearly)?--
			--YEARLY--

			SELECT
				YEAR([date]) AS sale_year,
				COUNT(car_id) AS car_sold,
				SUM(price) AS total_revenue
			FROM [Car Sales.xlsx - car_data]
			GROUP BY YEAR([date])
			ORDER BY sale_year

			--MONTHLY--2022--

			SELECT
				FORMAT([date], 'MMMM') AS sale_month,
				COUNT(car_id) AS cars_sold,
				SUM(price) AS total_revenue
			FROM [Car Sales.xlsx - car_data]
			WHERE YEAR([date]) = 2022
			GROUP BY FORMAT([date], 'MMMM'), DATEPART(MM, [date])
			ORDER BY DATEPART(MM, [date])

			--MONTHLY--2023--

			SELECT
				FORMAT([date], 'MMMM') AS sale_month,
				COUNT(car_id) AS cars_sold,
				SUM(price) AS total_revenue
			FROM [Car Sales.xlsx - car_data]
			WHERE YEAR([date]) = 2023
			GROUP BY FORMAT([date], 'MMMM'), DATEPART(MM, [date])
			ORDER BY DATEPART(MM, [date])