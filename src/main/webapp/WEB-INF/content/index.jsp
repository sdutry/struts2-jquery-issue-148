<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<!doctype html>
<html lang="en">
  <head>
    <title>test jqgrid</title>
    <sj:head/>
  </head>
  <body>
    <h1>Test jqgrid</h1>
    
    <sjg:grid href="/grid-data" gridModel="orders" sortableRows="true">
      <sjg:gridColumn name="id" title="id" formatter="integer"/>
      <sjg:gridColumn name="name" title="name"/>
    </sjg:grid>

    <script>
      $(document).ajaxComplete(function(event, xhr, settings) {
        try {
          var response = jQuery.parseJSON(xhr.responseText);
          if (response.errors) {
            alert("Could not load grid");
          }
	} catch(error){}
      }); 
    </script>
  </body>
</html>
