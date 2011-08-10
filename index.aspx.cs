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


public partial class index : TravelPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        adList.Load("http://pic.128uu.com/adjs/lvyoushow.xml");
        ViewState.Clear();
    }
    public System.Xml.XmlDocument adList = new System.Xml.XmlDocument();
    public System.Xml.XmlDocument getFromToData(string from, string to)
    {

        TravelData list = new TravelData();
        list.To = to;
        list.StartName = from;
        list.MaxDay = "30";
        list.MinDay = "0";
        list.MinPrice = "0";
        list.MaxPrice = "500000";
        list.Page = "1";
        list.Pagenum = "10";
       list.Type = "InterfaceInfoSendConditionTravelXmlI";
       // Response.Write(list.XMLUrl);
     
        return list.dataList;
    }
    public System.Xml.XmlDocument _ChinaDataPIC;
    public System.Xml.XmlDocument ChinaDataPIC
    {
        get
        {
            if (_ChinaDataPIC == null)
            {
                _ChinaDataPIC = getFromToData("", "四川");
            }
            return _ChinaDataPIC;

        }
    }
    public System.Xml.XmlDocument _ChinaDataBJ;
    public System.Xml.XmlDocument ChinaDataBJ
    {
        get
        {
            if (_ChinaDataBJ == null)
            {
                _ChinaDataBJ= getFromToData("北京", "云南");
            }
            return _ChinaDataBJ;

        }
    }
    public System.Xml.XmlDocument _ChinaDataSH;
    public System.Xml.XmlDocument ChinaDataSH
    {
        get
        {
            if (_ChinaDataSH == null)
            {
                _ChinaDataSH = getFromToData("上海", "云南");
            }
            return _ChinaDataSH;

        }
    }
    public System.Xml.XmlDocument _ChinaDataSZ;
    public System.Xml.XmlDocument ChinaDataSZ
    {
        get
        {
            if (_ChinaDataSZ == null)
            {
                _ChinaDataSZ = getFromToData("深圳", "四川");
            }
            return _ChinaDataSZ;

        }
    }
    public System.Xml.XmlDocument _ChinaDataGZ;
    public System.Xml.XmlDocument ChinaDataGZ
    {
        get
        {
            if (_ChinaDataGZ == null)
            {
                _ChinaDataGZ = getFromToData("广州", "贵州");
            }
            return _ChinaDataGZ;

        }
    }
    public System.Xml.XmlDocument _NearDataPIC;
    public System.Xml.XmlDocument NearDataPIC
    {
        get
        {
            if (_NearDataPIC == null)
            {
                _NearDataPIC = getFromToData("", "北京");
            }
            return _NearDataPIC;

        }
    }
    
  

    public System.Xml.XmlDocument _OutDataPIC;
    public System.Xml.XmlDocument OutDataPIC
    {
        get
        {
            if (_OutDataPIC == null)
            {
                _OutDataPIC = getFromToData("", "马尔");
            }
            return _OutDataPIC;

        }
    }
    public System.Xml.XmlDocument[] _outdatas;
    public System.Xml.XmlDocument[] outdatas
    {
        get
        {
            if (_outdatas == null)
            {
                _outdatas = new System.Xml.XmlDocument[4];

                string[] froms = new string[] { "北京", "广州", "上海", "深圳" };
                string[] tos = new string[] { "欧", "欧", "欧", "欧" };
                for (int i = 0; i < 4; i++)
                {
                    _outdatas[i] = getFromToData(froms[i], tos[i]);
                }
            }
            return _outdatas;
        }
    }
    public System.Xml.XmlDocument[] _localdatas;
    public System.Xml.XmlDocument[] localdatas
    {
        get
        {
            if (_localdatas == null)
            {
                _localdatas = new System.Xml.XmlDocument[4];

                string[] froms = new string[] { "北京", "广州", "上海", "深圳" };
                string[] tos = new string[] { "北京", "广州", "上海", "深圳" };
                for (int i = 0; i < 4; i++)
                {
                    _localdatas[i] = getFromToData(froms[i], tos[i]);
                }
            }
            return _localdatas;
        }
    }
      public System.Xml.XmlDocument _discountdatas;
      public System.Xml.XmlDocument discountdatas
      {
          get
          {
              if (_discountdatas == null)
              {
                  TravelData list = new TravelData();
                 
                  list.MaxDay = "30";
                  list.MinDay = "0";
                  list.MinPrice = "0";
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
     public int picqty = 7;
        public            int itemqty = 9;
        public int m;
  


}
