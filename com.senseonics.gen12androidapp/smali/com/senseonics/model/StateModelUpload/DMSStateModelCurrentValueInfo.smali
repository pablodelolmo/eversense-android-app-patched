.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;
.super Ljava/lang/Object;
.source "DMSStateModelCurrentValueInfo.java"


# instance fields
.field private batteryStrength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BatteryStrength"
    .end annotation
.end field

.field private cgTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CGTime"
    .end annotation
.end field

.field private currentGlucose:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CurrentGlucose"
    .end annotation
.end field

.field private glucoseTrend:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseTrend"
    .end annotation
.end field

.field private signalStrength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SignalStrength"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->currentGlucose:Ljava/lang/Integer;

    .line 19
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->cgTime:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->glucoseTrend:Ljava/lang/Integer;

    .line 21
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->signalStrength:Ljava/lang/Integer;

    .line 22
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->batteryStrength:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getBatteryStrength()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->batteryStrength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCgTime()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->cgTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentGlucose()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->currentGlucose:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGlucoseTrend()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->glucoseTrend:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSignalStrength()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;->signalStrength:Ljava/lang/Integer;

    return-object v0
.end method
