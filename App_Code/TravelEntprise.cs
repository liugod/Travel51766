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
///TravelEntprise 的摘要说明
/// </summary>
public class TravelEntprise
{
    public TravelEntprise()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
   // public string XMLUrl = "http://www.51766.com/api/InterfaceInfoSendXML.jsp?type=InterfaceInfoSendTravelCustXmlI&page=1&pagenum=2";

    public DataSet getDataList
    {
        get
        {
            System.Xml.XmlDocument xml = new System.Xml.XmlDocument();
            xml.Load(XMLUrl);
            return null;
            //DataSet ds = new DataSet();
            //ds.Load
        }

    }

    public string XMLUrl 
    {
        get
        {
            string url ="http://www.51766.com/api/InterfaceInfoSendXML.jsp?type={0}&page={1}&pagenum={2}";
            return string.Format(url, Type, Page, Pagenum);
        }
    }
    string type;

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
}
