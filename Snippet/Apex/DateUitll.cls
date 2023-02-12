public class DateUitll {



	public static Date getMonthstartdate(){
	    Date todaysDate=Date.today();
        return todaysDate.toStartofMonth();
    }
    public static Date getMonthLastDate(){
    	Date todaysDate=Date.today();
        return todaysDate.addMonths(1).toStartofMonth().addDays(-1);
    }

    
}