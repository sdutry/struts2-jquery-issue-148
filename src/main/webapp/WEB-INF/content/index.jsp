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
    
    <sjg:grid href="wrongurl" gridModel="blabl" sortableRows="true">
    </sjg:grid>

    <script>
      $(document).ajaxComplete(function(event, xhr, settings) {
        var response = jQuery.parseJSON(xhr.responseText);
        if (response.errors) {
          alert("Could not load grid");
        }
      }); 
    </script>
  </body>
</html>
