using System;
using System.Collections;
using System.Xml;

namespace Kingston.ComLib.Helper
{
    public static class XMLHelper
    {
        #region Create XML Document
        /// <summary>  
        /// Create a XML file with root node 
        /// </summary>  
        /// <param name="FileName">Xml file name  
        ///  <param name="RootName">root node name 
        ///  <param name="Encode">
        /// <returns></returns>  
        public static bool CreateXmlDocument(string FileName, string RootName, string Encode)
        {
            try
            {
                XmlDocument xmldoc = new XmlDocument();
                XmlDeclaration xmldecl;
                xmldecl = xmldoc.CreateXmlDeclaration("1.0", Encode, null);
                xmldoc.AppendChild(xmldecl);
                XmlElement xmlelem = xmldoc.CreateElement("", RootName, "");
                xmldoc.AppendChild(xmlelem);
                xmldoc.Save(FileName);
                return true;
            }
            catch (Exception e)
            {
                //return false;  
                throw new Exception(e.Message);
            }
        }

        #endregion

        #region Create,Update,Delete Node(s)
        /// <summary>
        /// Insert
        /// </summary>
        /// <param name="XmlFile"></param>
        /// <param name="NewNodeName"></param>
        /// <param name="HasAttributes"></param>
        /// <param name="fatherNode"></param>
        /// <param name="htAtt"></param>
        /// <param name="htSubNode"></param>
        /// <returns></returns>
        public static bool InsertNode(string XmlFile, string NewNodeName, bool HasAttributes, string fatherNode, Hashtable htAtt, Hashtable htSubNode)
        {
            try
            {
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(XmlFile);
                XmlNode root = xmldoc.SelectSingleNode(fatherNode);
                XmlElement xmlelem = xmldoc.CreateElement(NewNodeName);
                if (htAtt != null && HasAttributes) //if this node has attributes, add attributes firstly  
                {
                    SetAttributes(xmlelem, htAtt);
                    SetNodes(xmlelem.Name, xmldoc, xmlelem, htSubNode);//add it's children nodes and innertext after have added attributes  
                }
                else
                {
                    SetNodes(xmlelem.Name, xmldoc, xmlelem, htSubNode);//if this node has not attributes, directly add it's children nodes  
                }

                root.AppendChild(xmlelem);
                xmldoc.Save(XmlFile);

                return true;
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);

            }
        }

        /// <summary>
        /// Update
        /// </summary>
        /// <param name="XmlFile"></param>
        /// <param name="fatherNode"></param>
        /// <param name="htAtt"></param>
        /// <param name="htSubNode"></param>
        /// <returns></returns>
        public static bool UpdateNode(string XmlFile, string fatherNode, Hashtable htAtt, Hashtable htSubNode)
        {
            try
            {
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(XmlFile);
                XmlNodeList root = xmldoc.SelectSingleNode(fatherNode).ChildNodes;
                UpdateNodes(root, htAtt, htSubNode);
                xmldoc.Save(XmlFile);
                return true;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        /// <summary>
        /// Delete
        /// </summary>
        /// <param name="XmlFile"></param>
        /// <param name="fatherNode"></param>
        /// <returns></returns>
        public static bool DeleteNodes(string XmlFile, string fatherNode)
        {
            try
            {
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(XmlFile);
                XmlNode xmlnode = xmldoc.SelectSingleNode(fatherNode);
                xmlnode.RemoveAll();
                xmldoc.Save(XmlFile);
                return true;
            }
            catch (XmlException xe)
            {
                throw new XmlException(xe.Message);
            }
        }
        /// <summary>
        /// Delete
        /// </summary>
        /// <param name="xmlFileName"></param>
        /// <param name="xpath"></param>
        /// <returns></returns>
        public static bool DeleteXmlNodeByXPath(string xmlFileName, string xpath)
        {
            bool isSuccess = false;
            XmlDocument xmldoc = new XmlDocument();
            try
            {
                xmldoc.Load(xmlFileName); //Load XML Decument
                XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);
                if (xmlNode != null)
                {
                    //delete node 
                    xmldoc.ParentNode.RemoveChild(xmlNode);
                }
                xmldoc.Save(xmlFileName); //save
                isSuccess = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return isSuccess;
        }
        /// <summary>
        /// Delete
        /// </summary>
        /// <param name="xmlFileName"></param>
        /// <param name="xpath"></param>
        /// <param name="xmlAttributeName"></param>
        /// <returns></returns>
        public static bool DeleteXmlAttributeByXPath(string xmlFileName, string xpath, string xmlAttributeName)
        {
            bool isSuccess = false;
            bool isExistsAttribute = false;
            XmlDocument xmldoc = new XmlDocument();
            try
            {
                xmldoc.Load(xmlFileName);
                XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);
                XmlAttribute xmlAttribute = null;
                if (xmlNode != null)
                {
                    foreach (XmlAttribute attribute in xmlNode.Attributes)
                    {
                        if (attribute.Name.ToLower() == xmlAttributeName.ToLower())
                        {
                            xmlAttribute = attribute;
                            isExistsAttribute = true;
                            break;
                        }
                    }
                    if (isExistsAttribute)
                    {
                        xmlNode.Attributes.Remove(xmlAttribute);
                    }
                }
                xmldoc.Save(xmlFileName);
                isSuccess = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return isSuccess;
        }
        /// <summary>
        /// Delete
        /// </summary>
        /// <param name="xmlFileName"></param>
        /// <param name="xpath"></param>
        /// <returns></returns>
        public static bool DeleteAllXmlAttributeByXPath(string xmlFileName, string xpath)
        {
            bool isSuccess = false;
            XmlDocument xmldoc = new XmlDocument();
            try
            {
                xmldoc.Load(xmlFileName);
                XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);
                if (xmlNode != null)
                {
                    xmlNode.Attributes.RemoveAll();
                }
                xmldoc.Save(xmlFileName);
                isSuccess = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return isSuccess;
        }
        #endregion

        #region Auxiliary Function
        /// <summary>
        /// Set Node Attributes
        /// </summary>
        /// <param name="xe"></param>
        /// <param name="htAttribute"></param>
        public static void SetAttributes(XmlElement xe, Hashtable htAttribute)
        {
            foreach (DictionaryEntry de in htAttribute)
            {
                xe.SetAttribute(de.Key.ToString(), de.Value.ToString());
            }
        }
        /// <summary>
        /// Add Children to Root Node
        /// </summary>
        /// <param name="rootNode"></param>
        /// <param name="XmlDoc"></param>
        /// <param name="rootXe"></param>
        /// <param name="SubNodes"></param>
        public static void SetNodes(string rootNode, XmlDocument XmlDoc, XmlElement rootXe, Hashtable SubNodes)
        {
            foreach (DictionaryEntry de in SubNodes)
            {
                XmlNode xmlnode = XmlDoc.SelectSingleNode(rootNode);
                XmlElement subNode = XmlDoc.CreateElement(de.Key.ToString());
                subNode.InnerText = de.Value.ToString();
                rootXe.AppendChild(subNode);
            }
        }
        /// <summary>
        /// UpdateNodes
        /// </summary>
        /// <param name="root"></param>
        /// <param name="htAtt"></param>
        /// <param name="htSubNode"></param>
        public static void UpdateNodes(XmlNodeList root, Hashtable htAtt, Hashtable htSubNode)
        {
            foreach (XmlNode xn in root)
            {
                XmlElement xmlelem = (XmlElement)xn;
                if (xmlelem.HasAttributes)
                {
                    foreach (DictionaryEntry de in htAtt)
                    {
                        if (xmlelem.HasAttribute(de.Key.ToString()))
                        {
                            xmlelem.SetAttribute(de.Key.ToString(), de.Value.ToString());
                        }
                    }
                }
                if (xmlelem.HasChildNodes)
                {
                    XmlNodeList xnl = xmlelem.ChildNodes;
                    foreach (XmlNode xn1 in xnl)
                    {
                        XmlElement xe = (XmlElement)xn1;
                        foreach (DictionaryEntry de in htSubNode)
                        {
                            if (xe.Name == de.Key.ToString())//htSubNode中的key存储了需要更改的节点名称，  
                            {
                                xe.InnerText = de.Value.ToString();//htSubNode中的Value存储了Key节点更新后的数据  
                            }
                        }
                    }
                }

            }
        }
        #endregion

        #region Read and Select Node(s)
        /// <summary>
        /// GetXmlNodeByXpath
        /// </summary>
        /// <param name="xmlFileName"></param>
        /// <param name="xpath"></param>
        /// <returns></returns>
        public static XmlNode GetXmlNodeByXpath(string xmlFileName, string xpath)
        {
            XmlDocument xmldoc = new XmlDocument();
            try
            {
                xmldoc.Load(xmlFileName);
                XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);
                return xmlNode;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// GetXmlNodeListByXpath
        /// </summary>
        /// <param name="xmlFileName"></param>
        /// <param name="xpath"></param>
        /// <returns></returns>
        public static XmlNodeList GetXmlNodeListByXpath(string xmlFileName, string xpath)
        {
            XmlDocument xmldoc = new XmlDocument();
            try
            {
                xmldoc.Load(xmlFileName);
                XmlNodeList xmlNodeList = xmldoc.SelectNodes(xpath);
                return xmlNodeList;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// GetXmlAttribute
        /// </summary>
        /// <param name="xmlFileName"></param>
        /// <param name="xpath"></param>
        /// <param name="xmlAttributeName"></param>
        /// <returns></returns>
        public static XmlAttribute GetXmlAttribute(string xmlFileName, string xpath, string xmlAttributeName)
        {
            XmlDocument xmldoc = new XmlDocument();
            XmlAttribute xmlAttribute = null;
            try
            {
                xmldoc.Load(xmlFileName); 
                XmlNode xmlNode = xmldoc.SelectSingleNode(xpath);
                if (xmlNode != null)
                {
                    if (xmlNode.Attributes.Count > 0)
                    {
                        xmlAttribute = xmlNode.Attributes[xmlAttributeName];
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex; 
            }
            return xmlAttribute;
        }
        #endregion
    }
}
