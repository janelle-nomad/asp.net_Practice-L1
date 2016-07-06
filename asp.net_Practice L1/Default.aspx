<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="asp.net_Practice_L1.Default" %>


<!DOCTYPE html>
<!--
    Author Name: Janelle Heron
    Student ID: 300839820   

    -->
<html lang="en">
<head runat="server">
 
    
    <!--CSS Section-->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    
    <!-- Nav bar from bootstrap -->
    
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" 
          data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">ASP.NET Web Forms</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
       <li class="active"><a href="#"><i class="fa fa-home fa-lg"></i> Home</a></li>
        <li><a href="#"><i class="fa fa-th fa-lg"></i> Products</a></li>
        <li><a href="#"><i class="fa fa-gear fa-lg"></i> Services</a></li>  
        <li><a href="#"><i class="fa fa-info fa-lg"></i> Contact Us</a></li>
          <li><a href="#"><i class="fa fa-phone fa-lg"></i> Contact Us</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    

    <!-- User Profile Page --> 
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6"></div> <!--The user profile will stay in this section-->
            <h1>Janelle Heron</h1>
            <p>Student ID: 300839820</p>
            <form class="form" id="form1" runat="server">
                <div class="form-group">
                    <asp:Label ID="FirstNameLbl" Text="First Name" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="FirstNameTb" runat="server" required="true" CausesValidation="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="LastNameLbl" Text="Last Name" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="LastNameTb" runat="server" required="true" CausesValidation="True"></asp:TextBox>
                </div>
                <!--User name -->
                
                <div class="form-group">
                    <asp:Label ID="UserLb" Text="User Name" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="UserNameTb" required="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="UserNameReq" ControlToValidate="UserNameTb" CssClass="alert alert-danger" ErrorMessage="User Name Required" ></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                    <asp:Label ID="AgeLbl" Text="Age" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="AgeTb" runat="server" required="true" CausesValidation="True"></asp:TextBox>
                    <asp:RangeValidator CssClass="alert alert-danger" ID="AgeRangeValidator"  runat="server" ErrorMessage="Please enter valid age, between 21-30" MaximumValue="30" MinimumValue="21" Type="Integer" ControlToValidate="AgeTb"></asp:RangeValidator>
                </div>
                <div class="form-control">
                    <asp:Label ID="UserEmail" Text="Email" runat="server"></asp:Label>
                    <asp:TextBox ID="EmailTb" runat="server" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert alert-danger" ID="EmailReq" runat="server" ControlToValidate="EmailTb" ErrorMessage="Email Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailVal" runat="server" ControlToValidate="EmailTb" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="You must enter a valid email address!"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="UserPass" Text="Password" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="UserPassTb" TextMode="Password" Required="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert alert-danger" ID="UserPassVal" ControlToValidate="UserPassTb" runat="server" ErrorMessage="Password Required" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="UserPassConf" Text="Confirm Password" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="UserPassConfTb" TextMode="Password" Required="true" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert alert-danger" ID="UserPassConfReq" ControlToValidate="UserPassConfTb" runat="server" ErrorMessage="Password Required" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" CssClass="alert alert-danger" ID="comparePass" ControlToCompare="UserPassTb" ControlToValidate="UserPassConfTb" ErrorMessage="Passwords do not match" SetFocusOnError="True" Display="Dynamic"></asp:CompareValidator>
                </div>

                <br/>
                <br/>
                <asp:Button CssClass="btn btn-primary" ID="SubmitButton" Text="Submit" runat="server" OnClick="SubmitButton_Click"/>
                <br/>
                <hr/>
                <div class="form-group">
                    <asp:Label ID="FullNameLbl" Text="User Profile" runat="server"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="FullNameTb" runat="server"></asp:TextBox>
                </div>
            </form>
        </div>
    </div>



    <!--JavaScript Section-->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</body>
</html>
