using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class TravelLocal : TravelPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public System.Xml.XmlDocument _discountdatas;
    public System.Xml.XmlDocument discountdatas
    {
        get
        {
            if (_discountdatas == null)
            {
                TravelData list = new TravelData();

                //list.MaxDay = "30";
                //list.MinDay = "0";
               // list.MinPrice = "0";
                list.MaxPrice = "1000";
                list.Page = "1";
                list.Pagenum = "8";
                list.Type = "InterfaceInfoSendConditionTravelXmlI";
                // Response.Write(list.XMLUrl);
                _discountdatas = list.dataList;
            }
            return _discountdatas;
        }
    }
    public string[] citys
    {
        get
        {
            string sql = "select city from city_info ";
            HotelCloud.Data.ADOHelper help1 = new HotelCloud.Data.ADOHelper();
            DataSet ds = help1.ExecuteGet(sql);
            string[] city = new string[ds.Tables[0].Rows.Count];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                city[i] = ds.Tables[0].Rows[i]["city"].ToString();

            }
           // string[] city = new string[] { "北京","上海","广州","深圳"};
            return city;


        }
    }
    public int picqty = 7;
    public int itemqty = 9;
    public int m;
    public System.Xml.XmlDocument _chinadata;
    public System.Xml.XmlDocument chinadata
    {
        get
        { 
              if(_chinadata==null)
            {
                  _chinadata  =getFromToData(ThisCity,  "川"); 
            }
            return _chinadata;
            
        }
    }
     public System.Xml.XmlDocument _neardata;
    public System.Xml.XmlDocument neardata
      {
        get
          { 
            if(_neardata==null)
            {
                  _neardata  =getFromToData(ThisCity, ThisCity); 
            }
            return _neardata;
        }
    }

    public System.Xml.XmlDocument _hotdata;
    public System.Xml.XmlDocument hotdata
    {
        get
        { 
            if(_hotdata==null)
            {
                  _hotdata  =getFromToData(ThisCity, ""); 
            }
            return _hotdata;
        }
    }

  
}
