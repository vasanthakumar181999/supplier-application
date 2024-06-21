<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DMS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <DMSC:Header ID="Header" runat="server" />
     <meta charset="utf-8" />
    <meta http-equiv='cache-control' content='no-cache'/>
   <meta http-equiv='expires' content='0'/>
   <meta http-equiv='pragma' content='no-cache'/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link href="../assets/css/Default.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet"/>

   <!--==================================clear-browser-cache===========================================------>

    <script src="../assets/js/Default.js" type="text/javascript"></script>

   <!--==================================qrcode-Genrate================================================------>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>

   <!--==================================Pdf============================================================------>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.0/xlsx.full.min.js"></script>



    <script src="../assets/js/jspdf.debug.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.6/jspdf.plugin.autotable.min.js"></script>
</head>
<body>
   
    <div class="preloader" id="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <DMSC:TopBar ID="TopBar" runat="server" />
    <DMSC:Menu ID="Menu" runat="server" />
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid" id="DMSMainContainer">
        <!-- *************************************************************** -->
        <!-- Start First Cards -->
        <!-- *************************************************************** -->
           <div class="card-group">
            <div class="card border-right">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                          <%--<div class="d-inline-flex align-items-center">
                                <h2 class="text-dark mb-1 font-weight-medium">15</h2>
                                <span
                                    class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">-18.33%</span>
                            </div>--%>
                            <h4 class="font-weight-normal mb-0 w-100 text-truncate">Pending Purchase Order</h4><br />
                            <h3 class="text-dark mb-1 font-weight-medium">₹ 15200</h3>
                            <span class="badge bg-primary font-14 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">Total Of Cost..</span>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="gift"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card border-right">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                            <%--<div class="d-inline-flex align-items-center">
                                <h2 class="text-dark mb-1 font-weight-medium">15</h2>
                                <span
                                    class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">-18.33%</span>
                            </div>--%>
                            <h4 class="font-weight-normal mb-0 w-100 text-truncate">Recieved Materials</h4><br />
                            <h3 class="text-dark mb-1 font-weight-medium">₹ 14200</h3>
                            <span class="badge bg-success font-14 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">You are Gain..</span>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="thumbs-up"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card border-right">
                <div class="card-body">
                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                        <div>
                            <%--<div class="d-inline-flex align-items-center">
                                <h2 class="text-dark mb-1 font-weight-medium">15</h2>
                                <span
                                    class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">-18.33%</span>
                            </div>--%>
                            <h4 class="font-weight-normal mb-0 w-100 text-truncate">Purchase Order Expired</h4><br />
                            <h3 class="text-dark mb-1 font-weight-medium">₹ 1000</h3>
                            <span class="badge bg-danger font-14 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">You getting Loss..</span>
                        </div>
                        <div class="ml-auto mt-md-3 mt-lg-0">
                            <span class="opacity-7 text-muted"><i data-feather="thumbs-down"></i></span>
                        </div>
                    </div>
                </div>
            </div>
         
        </div>

 <!-- *************************************************************** -->

        <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header"><span class="card-title">Purchase Order Ends In This Week.</span></div>
            <div class="card-body">
                <div class="table table-responsive" id="DMS_DIV_PURs" style="display: none;">
                    <table id="DMS_TBL_PURDetailss" class="table table-hover table-bordered">
                        <thead>
                            <tr>
                                <th class="text-dark">Po No</th>
                                <th class="text-dark">Po Date</th>
                                <th class="text-dark">Supplier Name</th>
                                <th class="text-dark">Po Validity</th>
                                <th class="text-dark">Po Status</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
                </div>
            </div>
        </div>
       </div>
        </div>
        <!-- *************************************************************** -->
        <!-- End First Cards -->
        <!-- *************************************************************** -->

    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <DMSC:Footer ID="Footer" runat="server" />
    <script src="JS/DMSNavigation.js?v=<%=ConfigurationManager.AppSettings["Version"].ToString() %>" type="text/javascript"></script>
    <input type="hidden" runat="server" id="hid_LoginID" value="" />
    <input type="hidden" runat="server" id="hid_UserFullName" value="" />
    <input type="hidden" runat="server" id="hid_LoPrivilege" value="" />
    <input type="hidden" runat="server" id="hid_Users" value="" />
    <input type="hidden" id="Hid_Version" value="<%=ConfigurationManager.AppSettings["Version"].ToString() %>" />
    <input type="hidden" id="Hid_PageVersion" value="<%=ConfigurationManager.AppSettings["PageVersion"].ToString() %>" />
    <input type="hidden" id="Hid_DebugerFlag" value="<%=ConfigurationManager.AppSettings["DebugerFlag"].ToString() %>" />
    
  
</body>
</html>