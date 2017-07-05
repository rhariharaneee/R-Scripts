
---Check the config value for "external scripts enabled"
SP_Configure


--Enable external script 

EXEC SP_CONFIGURE 'external script enabled', 1
GO
RECONFIGURE
GO

---Restart the server
---start Launch Pad service


---Script 1
Exec sp_execute_external_script
@language = N'R'
, @script = N' v <- c( 2,5.5,6)
				t <- c(8, 3, 4)
		OutputDataSet <- data.frame(v*t);'
, @input_data_1 = N''
WITH Result SETS (([Value_R] int not null));

---Script 2
Exec sp_execute_external_script
@language = N'R'
, @script = N'x <- c(''red'',''green'',"yellow")
		OutputDataSet <- data.frame(x);'
, @input_data_1 = N''
WITH Result SETS (([Value_R] nvarchar(50) not null));

---Script 3
Exec sp_execute_external_script
@language = N'R'
, @script = N'year=rep(seq(1990,2016) , each=10)
name=rep(letters[1:10] , 27)
value=sample( seq(0,1,0.0001) , length(year))
data=data.frame(year, name, value)

		OutputDataSet <- data.frame(data);'
, @input_data_1 = N''
WITH Result SETS (([year] nvarchar(10), [name] nvarchar(10), [value] float));


---Script 4
Exec sp_execute_external_script
@language = N'R'
, @script = N' x<- 1:15;
		str(InputDataSet)
		y<-as.vector(t(InputDataSet));
		z=x+y;
		OutputDataSet <- data.frame(z);'
, @input_data_1 = N'Select 10 as y'
WITH Result SETS (([Value_R] int not null));

