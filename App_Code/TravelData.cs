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


/// <summary>
///TravelData 的摘要说明
/// </summary>
public class TravelData
{
    public TravelData()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public System.Xml.XmlDocument dataList
    {
        get
        {
            System.Xml.XmlDocument xml = new System.Xml.XmlDocument();
            xml.Load(XMLUrl);
          //  HttpContext.Current.Response.Write(XMLUrl);
            return xml;
            //DataSet ds = new DataSet();
            //ds.Load
        }

    }

    public string XMLUrl
    {
        get
        {

            string url = "http://www.51766.com/api/InterfaceInfoSendXML.jsp?type={0}&page={1}&pagenum={2}&&startName={3}&custId＝{4}&to={5}&minDay={6}&maxDay={7}&minPrice={8}&maxPrice={9}";
            return string.Format(url, Type, Page, Pagenum,StartName,CustId,To,MinDay,MaxDay,MinPrice,MaxPrice);
        }
    }
    string type = "InterfaceInfoSendConditionTravelXmlI";

    public string Type
    {
        get { return type; }
        set { type = value; }
    }
    string _page;

    public string Page
    {
        get { return _page; }
        set { _page = value; }
    }
    string _pagenum;

    public string Pagenum
    {
        get { return _pagenum; }
        set { _pagenum = value; }
    }
    string startName;

    public string StartName
    {
        get { return startName; }
        set { startName = value; }
    }
    string custId;

    public string CustId
    {
        get { return custId; }
        set { custId = value; }
    }
   
    string to;

    public string To
    {
        get { return to; }
        set { to = value; }
    }
    string minDay;

    public string MinDay
    {
        get { return minDay; }
        set { minDay = value; }
    }
    string maxDay;

    public string MaxDay
    {
        get { return maxDay; }
        set { maxDay = value; }
    }
    string minPrice;

    public string MinPrice
    {
        get { return minPrice; }
        set { minPrice = value; }
    }
    string maxPrice;

    public string MaxPrice
    {
        get { return maxPrice; }
        set { maxPrice = value; }
    }
}
