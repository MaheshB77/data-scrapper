package data;

import java.util.HashMap;
import java.util.LinkedHashMap;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class DataScrapper {
	public LinkedHashMap<String,String> mainData=new LinkedHashMap<String, String>();
	public HashMap<String,String> getData(String countryName) throws Exception
	{
		Document doc=Jsoup.connect("https://www.worldometers.info/coronavirus/country/"+countryName).get();
		Elements els=doc.select("#maincounter-wrap");
		for(Element e:els)
		{
			mainData.put(e.select("h1").text(), e.select(".maincounter-number>span").text());
			
		}
	
		return mainData;
	}
}
	