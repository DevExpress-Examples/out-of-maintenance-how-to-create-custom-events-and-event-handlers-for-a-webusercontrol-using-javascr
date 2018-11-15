<!-- default file list -->
*Files to look at*:

* [ComboUC.ascx](./CS/WebSite/ComboUC.ascx) (VB: [ComboUC.ascx](./VB/WebSite/ComboUC.ascx))
* [ComboUC.ascx.cs](./CS/WebSite/ComboUC.ascx.cs) (VB: [ComboUC.ascx](./VB/WebSite/ComboUC.ascx))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to create custom events and event handlers for a WebUserControl using JavaScript


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


