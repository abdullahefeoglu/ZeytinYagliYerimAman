<%@ Page Title="" Language="C#" MasterPageFile="~/ZeytinyagliYerimAman.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ZeytinyagliYerimAman.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .resim {
            height: 300px;
            width: 400px;
        }

        .card {
            height: 550px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="Assets/photo/zeytinyağıanasyafa.jpg" class="img" />
    <div class="yardimci"></div>
    <div ng-app="deneme" ng-controller="verigetir" class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <div id="demo" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000" data-bs-pause="hover">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                            </div>
                            <div class="carousel-inner">
                                <a href="#">
                                    <div class="carousel-item active">
                                        <img src="Assets/photo/felovia%205%20litre.png" class="img-thumbnail resim">
                                    </div>
                                </a>
                                <div class="carousel-item">
                                    <img src="Assets/photo/felovia%205litre%202.png" class="img-thumbnail resim">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                <span class="carousel-control-next-icon"></span>
                            </button>
                        </div>
                        <p class="card-text">
                            Olgun Hasat Ayvalık 5L Zeytinyağı
                            Ayvalık ・ Klasik Seri ・ Olgun Hasat
                            ₺1,269.00 
                        </p>
                    </div>
                    <button class="btn btn-secondary card-footer">SEPETE EKLE</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var app = angular.module('deneme', []);
        app.controller('verigetir', function ($scope, $http) {
            $http.get("json.json").then(function (response) {
                $scope.veri = response.data.records
            })
        })
    </script>
    <script src="Assets/angular-1.8.2/angular.min.js"></script>
</asp:Content>
