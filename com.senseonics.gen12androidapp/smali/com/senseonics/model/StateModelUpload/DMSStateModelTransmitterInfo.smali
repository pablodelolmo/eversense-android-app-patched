.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;
.super Ljava/lang/Object;
.source "DMSStateModelTransmitterInfo.java"


# instance fields
.field private AlgoFormatVersion:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AlgorhtimParameterFormatVersion"
    .end annotation
.end field

.field private CurrentCalibrationPhase:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CurrentCalibrationPhase"
    .end annotation
.end field

.field private DateOfCurrentCalibrationPhase:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StartCalibrationPhaseDT"
    .end annotation
.end field

.field private LastCriticalFault:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastFaultCritical"
    .end annotation
.end field

.field private SamplingInterval:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SamplingInterval"
    .end annotation
.end field

.field private TxActive:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TxActive"
    .end annotation
.end field

.field private TxAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterAddress"
    .end annotation
.end field

.field private TxID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterSNo"
    .end annotation
.end field

.field private TxModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterModelNo"
    .end annotation
.end field

.field private TxName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterName"
    .end annotation
.end field

.field private TxSoftwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterVersionNo"
    .end annotation
.end field

.field private TxSoftwareVersionExt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterVersionExtnNo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxID:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxAddress:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxModel:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxSoftwareVersion:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxSoftwareVersionExt:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->AlgoFormatVersion:Ljava/lang/Integer;

    .line 39
    iput-object p8, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->DateOfCurrentCalibrationPhase:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->LastCriticalFault:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->CurrentCalibrationPhase:Ljava/lang/String;

    .line 42
    iput-object p11, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->SamplingInterval:Ljava/lang/Integer;

    .line 43
    iput-object p12, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxActive:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAlgoFormatVersion()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->AlgoFormatVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCurrentCalibrationPhase()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->CurrentCalibrationPhase:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfCurrentCalibrationPhase()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->DateOfCurrentCalibrationPhase:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCriticalFault()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->LastCriticalFault:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingInterval()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->SamplingInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTxActive()Ljava/lang/Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxActive:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTxAddress()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTxID()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxID:Ljava/lang/String;

    return-object v0
.end method

.method public getTxModel()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxModel:Ljava/lang/String;

    return-object v0
.end method

.method public getTxName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxName:Ljava/lang/String;

    return-object v0
.end method

.method public getTxSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTxSoftwareVersionExt()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->TxSoftwareVersionExt:Ljava/lang/String;

    return-object v0
.end method
