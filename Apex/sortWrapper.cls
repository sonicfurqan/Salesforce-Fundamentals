public class sortWrapper implements Comparable {
/*To use sort() function on wrapper class it should be implement comparable interface and have compareTo() method
*  List<sortWrapper > x=new List<sortWrapper >(); 
*	x.sort(); 
*	Here list  is sorted by value1
*
*
*/

    Public String value1 { set;
        get; }

    Public String value2 { set;
        get; }

    Public String value3 { set;
        get; }

    Public String value4 { set;
        get; }

    public Integer compareTo(Object objToCompare) {

        sortWrapper obj = (sortWrapper) obj;

        if (this.value1 > obj.value1) {

            //for dessending order 

            return -1;

            //for assending order 

            Return 1

        }

        if (this.value1 == obj.value1)) {

        	return 0;

    	}

	    //for dessending order 

	    return -1;

	    //for assending order 

	    Return - 1

	}

}
