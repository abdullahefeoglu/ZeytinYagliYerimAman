<%@ Page Title="" Language="C#" MasterPageFile="~/Proje/ZeytinYagliYerimAman.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="ZeytinyagliYerimAman.Proje.UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="../Assets/photo/urundetayarkaplan.jpg" />
    <div class="container" ng-app="veri" ng-controller="verigetir">
        <table ng-repeat="x in bilgi">
            <tr>
                <td>
                    {{x.HarvestYear}}
                </td>
            </tr>
        </table>
    </div>
    <script>
        var app = angular.module('veri', []);
        app.controller('verigetir', function ($scope, $http) {
            $http.get("Zeytinyagi.json").then(function (response) {
                $scope.bilgi = response.data.TeknikBilgi

            })
        });
    </script>
</asp:Content>
