using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
///TravelPage 的摘要说明
/// </summary>
public class TravelPage:Page
{
    public TravelPage()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public  string ThisCity
    {
        get
        {
            if (HotelCloud.Common.HCRequest.GetString("startname") != "")
            {
                return HotelCloud.Common.HCRequest.GetString("startname");
            }
            else
            {
                ;
                return "广州";
            }
        }
    }
    public  string TargetCity
    {
        get
        {
            if (HotelCloud.Common.HCRequest.GetString("to") != "")
            {
                return HotelCloud.Common.HCRequest.GetString("to");
            }
            else
            {
               
                return "";
            }
        }
    }
    public string page
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetInt("page", 1).ToString();
        }
    }
    public string pagenum
    {
        get
        {

          
                return HotelCloud.Common.HCRequest.GetInt("pagenum", 20).ToString();
         
         
        }
    }
    public string minday
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetInt("minday", 0).ToString();
         
        }
    }
    public string maxday
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetInt("maxday", 30).ToString();
           
        }
    }
    public string minprice
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetInt("minprice", 0).ToString();
           
        }
    }
    public string maxprice
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetInt("maxprice", 500000).ToString();
          
        }
    }
    public string type
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetString("type");
        }
    }
    public string local
    {
        get
        {
            return HotelCloud.Common.HCRequest.GetString("local");
        }
    }

    public string makeHtmlList(string vname, string vvalue)
    {
        //string url = "travellist.aspx?local={0}&page={1}&pagenum={2}&startname={3}&custid＝{4}&to={5}&minday={6}&maxday={7}&minprice={8}&maxprice={9}";
         string url = "tourfromto_{0}_{1}.html";
        string tmp = "";
        switch (vname)
        {
          

         

            case "startname":
                {
                    tmp = string.Format( "", TargetCity);
                   
                }; break;

            case "targetname":
                {
                    tmp = string.Format( ThisCity, "");
                  
                }; break;


       
           
            default: tmp = ""; break;




        }
        return tmp;
    }
    public string makeList(string vname, string vvalue)
    {
        string url = "travellist.aspx?local={0}&page={1}&pagenum={2}&startname={3}&custid＝{4}&to={5}&minday={6}&maxday={7}&minprice={8}&maxprice={9}";
       // string url = "tourfromto.aspx?local={0}&page={1}&pagenum={2}&startname={3}&custid＝{4}&to={5}&minday={6}&maxday={7}&minprice={8}&maxprice={9}";
        string tmp = "";
        switch (vname)
        {
            case "local": 
                { tmp = string.Format(url, vvalue, page, pagenum, ThisCity, "", TargetCity, minday, maxday, minprice, maxprice) ;
                if (local == vvalue) { tmp = tmp + "\" class=\"actived\""; }
                };break;

            // case "local": return string.Format(url, "", "1", "20", from, "", target, "", "", "", "");

            case "page":
                {
                    tmp = string.Format(url, local, vvalue, pagenum, ThisCity, "", TargetCity, minday, maxday, minprice, maxprice);
            if (page == vvalue) { tmp = tmp + "\" class=\"actived\""; }
            }; break;


            case "pagenum":
                {
                    tmp = string.Format(url, local, page, vvalue, ThisCity, "", TargetCity, minday, maxday, minprice, maxprice);
            if (pagenum == vvalue) { tmp = tmp + "\" class=\"actived\""; }
            }; break;


            case "startname":
                {
                    tmp = string.Format(url, local, page, pagenum, vvalue, "", TargetCity, minday, maxday, minprice, maxprice);
            if (ThisCity == vvalue) { tmp = tmp + "\" class=\"actived\""; }
            }; break;

            case "targetname":
                {
                    tmp = string.Format(url, local, page, pagenum, ThisCity, "", vvalue, minday, maxday, minprice, maxprice);
            if (TargetCity == vvalue) { tmp = tmp + "\" class=\"actived\""; }
            }; break;


            //  case "transport": return string.Format(url, type, page, pagenum, from, "", target, minday, maxday, minprice, maxprice);
        
            // case "enterprise": return string.Format(url, type, page, pagenum, from, "", target, minday, maxday, minprice, maxprice);
            case "day":
                {
                    int min = int.Parse(vvalue) - 1;

                    tmp = string.Format(url, local, page, pagenum, ThisCity, "", TargetCity, vvalue, vvalue, minprice, maxprice);

                    if (maxday == vvalue) { tmp = tmp + "\" class=\"actived\""; }
                }; break;
            default: tmp = ""; break;
          



        }
        return tmp;
    }
          public string makeList(string vname,string value1,string value2)
          {
        string url = "travellist.aspx?type={0}&page={1}&pagenum={2}&startname={3}&custId＝{4}&to={5}&minday={6}&maxday={7}&minprice={8}&maxprice={9}";
        string tmp = "";
        switch (vname)
        {

            //case "day": {
            //    int min = int.Parse(value2) - 1;

            //    tmp = string.Format(url, type, page, pagenum, ThisCity, "", TargetCity, value1, value2, minprice, maxprice);

            //    if (maxday == value2) { tmp = tmp + "\" class=\"actived\""; }
            //}; break;


            case "price":
                {
                    tmp = string.Format(url, local, page, pagenum, ThisCity, "", TargetCity, minday, maxday, value1, value2);

                    if (maxprice == value2) { tmp = tmp + "\" class=\"actived\""; }
                }; break;
            default: tmp = ""; break;

        }
        return tmp;
        



    }
          public System.Xml.XmlDocument tlist
          {
              get
              {
                  TravelData list = new TravelData();
                  list.To = TargetCity;
                  list.StartName = ThisCity;
                  list.MaxDay = maxday;
                  list.MinDay = minday;
                  list.MinPrice = minprice;
                  list.MaxPrice = maxprice;
                  list.Page = page;
                  list.Pagenum = pagenum;
                  list.Type = "InterfaceInfoSendConditionTravelXmlI";
                 // Response.Write(list.XMLUrl);
                  return list.dataList;
                 
              }
          }
          public System.Xml.XmlDocument getFromToData(string from, string to)
          {

              TravelData list = new TravelData();
              list.To = to;
              list.StartName = from;
              //list.MaxDay = "30";
              //list.MinDay = "0";
              list.MinPrice = "0";
              list.MaxPrice = "500000";
              list.Page = "1";
              list.Pagenum = "10";
              list.Type = "InterfaceInfoSendConditionTravelXmlI";
              // Response.Write(list.XMLUrl);

              return list.dataList;
          }
}
