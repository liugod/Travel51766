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
///TravelTool 的摘要说明
/// </summary>
public class TravelTool
{
    public TravelTool()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public static string makeSerchUrl(string from,string target)
    {
       target =  HttpContext.Current.Server.UrlEncode(target);
       from = HttpContext.Current.Server.UrlEncode(from);
        //string url = "travelList.aspx?local={0}&page={1}&pagenum={2}&&startName={3}&custId＝{4}&to={5}&minDay={6}&maxDay={7}&minPrice={8}&maxPrice={9}";
        //return string.Format(url, "", "1", "20", from, "", target,"","","","");
        string url = "tourfromto_{0}_{1}.html";
        if (target == "")
        { url = "tourfrom_{0}.html"; }
        if (from == "")
        {
            url = "tourto_{1}.html";
        }
        return string.Format(url, from,target);


    }
    //public static string makeSerchUrl(string target)
    //{
    //    //string url = "travelList.aspx?local={0}&page={1}&pagenum={2}&&startName={3}&custId＝{4}&to={5}&minDay={6}&maxDay={7}&minPrice={8}&maxPrice={9}";
    //    //return string.Format(url, "", "1", "20", ThisCity, "", target, "", "", "", "");
    //    string url = "tourfrom_{0}.html";
    //    return string.Format(url,target);


    //}
    public static string makeSerchUrl(string target)
    {
        target = HttpContext.Current.Server.UrlEncode(target);
        //string url = "travelList.aspx?local={0}&page={1}&pagenum={2}&&startName={3}&custId＝{4}&to={5}&minDay={6}&maxDay={7}&minPrice={8}&maxPrice={9}";
        //return string.Format(url, "", "1", "20", ThisCity, "", target, "", "", "", "");
        string url = "tourto_{0}.html";
        return string.Format(url, target);


    }
    public static string ThisCity
    {
        get
        {
            return "广州";
        }
    }
    public static string TargetCity
    {
        get
        {
            return "广州";
        }
    }
    public static string[] ChinaTargets = new string[] { "北京", "天津", "承德", "北戴河", "三亚", "蜈支洲岛", "北京", "天津", "承德", "北戴河", "丽江", "桂林", "九寨沟", "长江三峡", "武夷山", "厦门", "黄山" };
    public static string[] ChinaOnboardTargets = new string[] { "香港", "维多利亚港", "澳门", "台湾", "阿里山", "日月潭" };
    public static string[] Islands = new string[] { "马尔代夫", "普吉岛", "苏梅岛", "长滩岛", "巴厘岛", "沙巴" };
    public static string[] Asias = new string[] { "泰国", "马来西亚", "越南", "柬埔寨", "尼泊尔", "印度" };
    public static string[] JpKrs = new string[] { "日本", "韩国", "朝鲜", "北海道", "首尔", "平壤" };
    public static string[] Europes = new string[] { "澳大利亚", "法国", "德国", "意大利", "希腊", "阿根廷", "巴西", "美国", "加拿大" };
    public static string[] EliteTarget = new string[] { "澳门", "五台山", "兵马俑", "西安", "美国", "张家界", "厦门", "漓江", "桂林","威尼斯", "杭州", "泰国" };
    public static string[] EliteNowTarget = new string[] { "拉萨", "法国", "三亚", "丽江", "香港", "海南", "非洲", "日本", "越南", "美国", "澳门" };

    //public static string makeSerchUrl(string target, string from)
    //{
    //    TravelList tl = new TravelList();
    //    tl.StartName = from;
    //    tl.To = target;
        
    //}
}

