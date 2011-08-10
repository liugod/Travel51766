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
///TravelDetail 的摘要说明
/// </summary>
public class TravelDetail
{
    public TravelDetail()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public System.Xml.XmlDocument getData
    {
        get
        {
            System.Xml.XmlDocument xml = new System.Xml.XmlDocument();
            xml.Load(XMLUrl);
            return xml;
            //DataSet ds = new DataSet();
            //ds.Load
        }

    }

    public string XMLUrl
    {
        get
        {
       
            string url = "http://www.51766.com/api/InterfaceInfoSendXML.jsp?type={0}&infoId={1}";
            return string.Format(url, infoType, _infoID);
        }
    }
    string infotype = "InterfaceInfoSendSingleTravelXmlI";

    public string infoType
    {
        get { return infotype; }
        set { infotype = value; }
    }
    string _infoID;

    public string InfoID
    {
        get { return _infoID; }
        set { _infoID = value; }
    }

}
