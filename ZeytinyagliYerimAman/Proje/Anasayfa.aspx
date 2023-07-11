<%@ Page Title="" Language="C#" MasterPageFile="~/Proje/ZeytinYagliYerimAman.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ZeytinyagliYerimAman.Proje.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .resim {
            height: 300px;
            width: 400px;
            -webkit-transform: scale(1);
            transform: scale(1);
            -webkit-transition: .3s ease-in-out;
            transition: .3s ease-in-out;
        }

            .resim:hover {
                -webkit-transform: scale(1.3);
                transform: scale(1.3);
            }

        .card {
            height: 550px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="../Assets/photo/zeytinyağıanasyafa.jpg" class="img" />
    <div style="height: 100px; width: 100%; background-color: white;">
    </div>
    <div class="container mt-5" ng-app="card" ng-controller="verigetir">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6" ng-repeat="x in zeytinyagi">
                <div class="card mt-5">
                    <div class="card-body">
                        <div>
                            <div id="{{x.CarouselID}}" class="carousel slide" data-bs-pause="hover">
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
                                <button class="carousel-control-prev" type="button" data-bs-target="{{x.TargetID}}" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="{{x.TargetID}}" data-bs-slide="next">
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
                                <p class="card-text mt-4 text">
                                    <b>{{x.UnitPrice}}</b>
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
