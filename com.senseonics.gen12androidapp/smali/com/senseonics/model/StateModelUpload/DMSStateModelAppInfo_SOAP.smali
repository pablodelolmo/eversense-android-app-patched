.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelAppInfo_SOAP.java"


# instance fields
.field private AppActive:Z

.field private AppOS:Ljava/lang/String;

.field private AppOSVersion:Ljava/lang/String;

.field private AppVersion:Ljava/lang/String;

.field private CountryLanguage:Ljava/lang/String;

.field private DeviceType:Ljava/lang/String;

.field private UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p6, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppActive:Z

    .line 22
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppOS:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppOSVersion:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppVersion:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->DeviceType:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    .line 27
    iput-object p7, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->CountryLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppOS()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppOS:Ljava/lang/String;

    return-object v0
.end method

.method public getAppOSVersion()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLanguage()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->CountryLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->DeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    return-object v0
.end method

.method public isAppActive()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->AppActive:Z

    return v0
.end method
