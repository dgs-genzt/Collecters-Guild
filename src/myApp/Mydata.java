package myApp;

import java.util.ArrayList;
import java.util.List;

import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Entity;

public class Mydata {

	public String myname,Name1,Counrty1;
	public int Year1,Value1;
	public ArrayList<String> Name = new ArrayList<String>();
	public ArrayList<String> Counrty = new ArrayList<String>();
	public ArrayList<Integer> Year = new ArrayList<Integer>();
	public ArrayList<Integer> Value = new ArrayList<Integer>();
	public ArrayList<String> User = new ArrayList<String>();
	public Mydata()
	{
		myname=null;
		Name.clear();
		Counrty.clear();
		Year.clear();
		Value.clear();
		User.clear();
	}
	
	public void getMyname()
	{
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		Filter heightMinFilter =
		  new FilterPredicate("User",
		                      FilterOperator.EQUAL,
		                      "Gowrishankar");
		/*datastore.put(book);*/
		
		// Use class Query to assemble a query
		Query q = new Query("Coin").setFilter(heightMinFilter);

		// Use PreparedQuery interface to retrieve results
		PreparedQuery pq = datastore.prepare(q);
		Cdata cd = new Cdata();
		

		for (Entity result : pq.asIterable()) {
//			Name.add("'hello'");
//			Counrty.add("'hello'");
//			Year.add(2);
//		  	Value.add(1);
//		  	
		  	Name.add('"'+(String) result.getProperty("Name")+'"');
			Counrty.add('"'+(String) result.getProperty("Country")+'"');
			Year.add((int)(long) result.getProperty("Year"));
		  	Value.add((int)(long) result.getProperty("Value"));
		}		
	}
	
	public void putData()
	{
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Entity coin = new Entity("Coin");        //Create Entity
		
		coin.setProperty("Name", Name1);
		coin.setProperty("Country", Counrty1);
		coin.setProperty("Year", Year1);
		coin.setProperty("Value",Value1);
		coin.setProperty("User","Gowrishankar");
		
		datastore.put(coin);
	}
	
	public void dataSearch()
	{
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		Filter FName =
		  new FilterPredicate("Name",
		                      FilterOperator.EQUAL,
		                      Name1);
		Filter FCountry =
				  new FilterPredicate("Country",
				                      FilterOperator.EQUAL,
				                      Counrty1);
		Filter FYear =
				  new FilterPredicate("Year",
				                      FilterOperator.EQUAL,
				                      Year1);
		/*datastore.put(book);*/
		Filter Fcombine =
				  CompositeFilterOperator.and(FName, FCountry);
		Filter Fcombine1 =
				  CompositeFilterOperator.and(Fcombine, FYear);
		// Use class Query to assemble a query
		Query q = new Query("Coin").setFilter(Fcombine1);

		// Use PreparedQuery interface to retrieve results
		PreparedQuery pq = datastore.prepare(q);
		
		for (Entity result : pq.asIterable()) {
			
		  	Name.add('"'+(String) result.getProperty("Name")+'"');
			Counrty.add('"'+(String) result.getProperty("Country")+'"');
			Year.add((int)(long) result.getProperty("Year"));
		  	Value.add((int)(long) result.getProperty("Value"));
		  	User.add('"'+(String) result.getProperty("User")+'"');
		}
		
		
	}
	
	
	public void setMyname(String n)
	{
		this.myname=n;
	}
	

	
}
