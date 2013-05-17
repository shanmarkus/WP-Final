<%-- 
    Document   : modal
    Created on : May 17, 2013, 2:00:24 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="StyleSheet" type="text/css" href="CSS/Bootstrap.css" />

        <title>JSP Page</title>
    </head>
    <body>
        <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-large">Launch demo modal</a>
        <div id="myModal" class="modal hide fade" style="display: none; ">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">×</button>
                <h3>Modal Heading</h3>
            </div>
            <div class="modal-body">
                <h4>Text in a modal</h4>
                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>

                <h4>Popover in a modal</h4>
                <p>This <a href="#" class="btn popover-test" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title">button</a> should trigger a popover on hover.</p>

                <h4>Tooltips in a modal</h4>
                <p><a href="#" class="tooltip-test" data-original-title="Tooltip">This link</a> and <a href="#" class="tooltip-test" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>

                <hr>

                <h4>Overflowing text to show optional scrollbar</h4>
                <p>We set a fixed <code>max-height</code> on the <code>.modal-body</code>. Watch it overflow with all this extra lorem ipsum text we've included.</p>
                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>

        <!-- SCRIPT !!!  -->
        <script type="text/javascript">
            <jsp:include page="js/jquery.js" />
            <jsp:include page="js/bootstrap.js" />
        </script>        
    </body>
</html>
