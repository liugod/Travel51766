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

public partial class Detail :TravelPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TravelDetail td = new TravelDetail();
        
        td.InfoID = id;
        //Response.Write(td.XMLUrl);
        data = td.getData;
        RptPriceList.DataSource = PricelistData.Tables[0].DefaultView;
        RptPriceList.DataBind();
       // Response.Write("/"+PricelistData.Tables[0].Rows.Count+"/");
    }
    public System.Xml.XmlDocument data;
    public string id
    {
        get
        {
            return  HotelCloud.Common.HCRequest.GetString("id");
        }
    }
    public System.Xml.XmlNodeList PriceList
    {
        get { return data.GetElementsByTagName("travelCycleList")[0].ChildNodes; }
    }
    
    public System.Xml.XmlDocument enterprise;
    public DataSet PricelistData
    {
        get
        {
            DataSet ds = new DataSet();
            ds.Tables.Add();
            ds.Tables[0].Columns.Add("startDate");
            ds.Tables[0].Columns.Add("preprice");


            for (int i = 0; i < PriceList.Count; i++)
            {

                DataRow dr = ds.Tables[0].NewRow();
                dr["startDate"] = PriceList[i].ChildNodes[0].InnerText;
                dr["preprice"] = PriceList[i].ChildNodes[2].InnerText;
                ds.Tables[0].Rows.Add(dr);
            }
            
            
            ds.Tables[0].DefaultView.Sort = " startDate asc ";
            return ds;
        }
    }

  
}
