.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelTransmitterInfo_SOAP.java"


# instance fields
.field private AlgoFormatVersion:I

.field private CurrentCalibrationPhase:Ljava/lang/String;

.field private DateOfCurrentCalibrationPhase:Ljava/lang/String;

.field private LastCriticalFault:Ljava/lang/String;

.field private SamplingInterval:I

.field private TxActive:Z

.field private TxAddress:Ljava/lang/String;

.field private TxID:Ljava/lang/String;

.field private TxModel:Ljava/lang/String;

.field private TxName:Ljava/lang/String;

.field private TxSoftwareVersion:Ljava/lang/String;

.field private TxSoftwareVersionExt:Ljava/lang/String;

.field private UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p8, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->AlgoFormatVersion:I

    .line 34
    iput-object p11, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->CurrentCalibrationPhase:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->DateOfCurrentCalibrationPhase:Ljava/lang/String;

    .line 36
    iput-object p10, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->LastCriticalFault:Ljava/lang/String;

    .line 37
    iput p12, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->SamplingInterval:I

    .line 38
    iput-boolean p13, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxActive:Z

    .line 39
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxAddress:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxID:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxModel:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxName:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxSoftwareVersion:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxSoftwareVersionExt:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    return-void
.end method


# virtual methods
.method public getAlgoFormatVersion()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->AlgoFormatVersion:I

    return v0
.end method

.method public getCurrentCalibrationPhase()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->CurrentCalibrationPhase:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfCurrentCalibrationPhase()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->DateOfCurrentCalibrationPhase:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCriticalFault()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->LastCriticalFault:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingInterval()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->SamplingInterval:I

    return v0
.end method

.method public getTxAddress()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTxID()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxID:Ljava/lang/String;

    return-object v0
.end method

.method public getTxModel()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxModel:Ljava/lang/String;

    return-object v0
.end method

.method public getTxName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxName:Ljava/lang/String;

    return-object v0
.end method

.method public getTxSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTxSoftwareVersionExt()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxSoftwareVersionExt:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    return-object v0
.end method

.method public isTxActive()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->TxActive:Z

    return v0
.end method
