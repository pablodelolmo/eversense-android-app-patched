.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelSensorInfo_SOAP.java"


# instance fields
.field private LinkedSensorID:Ljava/lang/String;

.field private MEP:Ljava/lang/String;

.field private MSP:Ljava/lang/String;

.field private SensorActive:Z

.field private SensorID:Ljava/lang/String;

.field private SensorInsertionDate:Ljava/lang/String;

.field private UnlinkedSensorID:Ljava/lang/String;

.field private UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->LinkedSensorID:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->MEP:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->MSP:Ljava/lang/String;

    .line 26
    iput-boolean p8, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->SensorActive:Z

    .line 27
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->SensorID:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->SensorInsertionDate:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->UnlinkedSensorID:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    return-void
.end method


# virtual methods
.method public getLinkedSensorID()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->LinkedSensorID:Ljava/lang/String;

    return-object v0
.end method

.method public getMEP()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->MEP:Ljava/lang/String;

    return-object v0
.end method

.method public getMSP()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->MSP:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorID()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->SensorID:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorInsertionDate()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->SensorInsertionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlinkedSensorID()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->UnlinkedSensorID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    return-object v0
.end method

.method public isSensorActive()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->SensorActive:Z

    return v0
.end method
