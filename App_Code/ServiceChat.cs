using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Collections;
using System.Web.Services.Protocols;
using System.Xml;

/// <summary>
/// Summary description for ServiceChat
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class ServiceChat : System.Web.Services.WebService 
{

    static protected ArrayList arrUsers = new ArrayList();
    static protected ArrayList arrMessage = new ArrayList();    

    public ServiceChat () 
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }


    [WebMethod]
    public string GetUsers()
    {
        string strUser = string.Empty;
        for (int i = 0; i < arrUsers.Count; i++)
        {
            strUser = strUser + arrUsers[i].ToString() + "|";
        }
        return strUser;
    }

    [WebMethod]
    public void AddUser(string strUser)
    {
        bool bFlag = false;
        for (int i = 0; i < arrUsers.Count; i++)
        {
            if (arrUsers[i].ToString() == strUser)
                bFlag = true;
            else
                SendMessage("Ser@ver", arrUsers[i].ToString(), strUser + " has logged in.");
        }
        if (bFlag == false)
            arrUsers.Add(strUser);
    }

    [WebMethod]
    public void RemoveUser(string strUser)
    {
        for (int i = 0; i < arrUsers.Count; i++)
        {
            if (arrUsers[i].ToString() == strUser)
                arrUsers.RemoveAt(i);
        }
    }

    [WebMethod]
    public void SendMessage(string strFromUser, string strToUser, string strMess)
    {
        arrMessage.Add(strToUser + ":" + strFromUser + ":" + strMess);
    }

    [WebMethod]
    public string ReceiveMessage(string strUser)
    {
        string strMess = string.Empty;
        for (int i = 0; i < arrMessage.Count; i++)
        {
            string[] strTo = arrMessage[i].ToString().Split(':');
            if (strTo[0].ToString() == strUser)
            {
                for (int j = 1; j < strTo.Length; j++)
                {
                    strMess = strMess + strTo[j] + ":";
                }
                arrMessage.RemoveAt(i);
                break;
            }
        }
        return strMess;
    }

    
}

