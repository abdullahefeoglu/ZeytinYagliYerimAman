<%@ Page Title="" Language="C#" MasterPageFile="~/Proje/ZeytinYagliYerimAman.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ZeytinyagliYerimAman.Proje.Anasayfa" %>

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
    <img src="../Assets/photo/zeytinyağıanasyafa.jpg" class="img" />
    <div class="yardimci"></div>
    <div class="container" ng-app="card" ng-controller="verigetir">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6" ng-repeat="x in zeytinyagi">
                <div class="card">
                    <div class="card-body">
                        <div>
                            <div id="demo" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000" data-bs-pause="hover">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                                </div>
                                <div class="carousel-inner">
                                    <a href="UrunDetay.aspx">
                                        <div class="carousel-item active">
                                            <img src="{{x.img}}" class="img-thumbnail resim">
                                        </div>
                                    </a>
                                    <a href="UrunDetay.aspx">
                                        <div class="carousel-item">
                                            <img src="{{x.img2}}" class="img-thumbnail resim">
                                        </div>
                                    </a>
                                    <a href="UrunDetay.aspx">
                                        <div class="carousel-item">
                                            <img src="{{x.img3}}" class="img-thumbnail resim">
                                        </div>
                                    </a>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                    <span class="carousel-control-next-icon"></span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                    <span class="carousel-control-next-icon"></span>
                                </button>
                            </div>
                            <div>
                                <p class="card-text mt-4 text">
                                    <b>{{x.ProductName}}</b>
                                </p>
                                <p class="card-text mt-4 text">
                                    <b>{{x.Category}}</b>
                                </p>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-secondary card-footer">SEPETE EKLE</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var app = angular.module('card', []);
        app.controller('verigetir', function ($scope, $http) {
            $http.get("Zeytinyagi.json").then(function (response) {
                $scope.zeytinyagi = response.data.Zeytinyagi

            })
        });
    </script>
</asp:Content>
