.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;
.super Ljava/lang/Object;
.source "DMSStateModelAppInfo.java"


# instance fields
.field private AppActive:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Active"
    .end annotation
.end field

.field private AppOS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppOS"
    .end annotation
.end field

.field private AppOSVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppOSVersion"
    .end annotation
.end field

.field private AppVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppVersion"
    .end annotation
.end field

.field private CountryLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppReserveField1"
    .end annotation
.end field

.field private DeviceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppActive:Ljava/lang/Integer;

    .line 28
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppOS:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppOSVersion:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppVersion:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->DeviceType:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->CountryLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppActive()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppActive:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAppOS()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppOS:Ljava/lang/String;

    return-object v0
.end method

.method public getAppOSVersion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLanguage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->CountryLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->DeviceType:Ljava/lang/String;

    return-object v0
.end method
