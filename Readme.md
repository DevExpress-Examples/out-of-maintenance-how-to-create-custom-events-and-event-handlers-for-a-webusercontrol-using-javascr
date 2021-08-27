<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128538756/12.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E20037)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [ComboUC.ascx](./CS/WebSite/ComboUC.ascx) (VB: [ComboUC.ascx](./VB/WebSite/ComboUC.ascx))
* [ComboUC.ascx.cs](./CS/WebSite/ComboUC.ascx.cs) (VB: [ComboUC.ascx.vb](./VB/WebSite/ComboUC.ascx.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to create custom events and event handlers for a WebUserControl using JavaScript
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e20037/)**
<!-- run online end -->


<p>This example shows how to create an event for a WebUserControl and raise it when it is needed. The corresponding event handler is created inside the page that includes the WebUserControl. </p><p>The Project consists of two ASPxComboBoxes, one inside the WebUserControl and the other inside the main page. These ComboBoxes are bound to the “Category” and “Product” Table in the Northwind database respectively. Once the selected index of the category ComboBox is changed, an event is raised and the selected CategoryID is passed to the main page. As a result, the content of the product ComboBox is changed according to the CategoryID. </p><p>Note that the “custom event” is a HTML5 feature and may not be supported by some old browsers.  </p><p><br />


```js
    var evt = document.createEvent("Event");
    evt.initEvent("valueChanged", true, true);

    function invokeValueChanged(catID) {
        evt.catID = catID;
        document.dispatchEvent(evt);
    }
```

 </p>

<br/>


