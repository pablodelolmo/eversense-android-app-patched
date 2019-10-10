.class public final enum Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;
.super Ljava/lang/Enum;
.source "StateModelUploadUtility_SOAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/StateModelUploadUtility_SOAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

.field public static final enum StateModelType_AppInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

.field public static final enum StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

.field public static final enum StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

.field public static final enum StateModelType_ThresholdInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

.field public static final enum StateModelType_TxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    const-string v1, "StateModelType_TxInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_TxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    .line 28
    new-instance v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    const-string v1, "StateModelType_SxInfo"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    .line 29
    new-instance v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    const-string v1, "StateModelType_ThresholdInfo"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_ThresholdInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    .line 30
    new-instance v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    const-string v1, "StateModelType_AppInfo"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_AppInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    .line 31
    new-instance v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    const-string v1, "StateModelType_CheckAndUpdatePassword"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    const/4 v0, 0x5

    .line 26
    new-array v0, v0, [Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_TxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_ThresholdInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_AppInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->$VALUES:[Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;
    .locals 1

    .line 26
    const-class v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;
    .locals 1

    .line 26
    sget-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->$VALUES:[Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v0}, [Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    return-object v0
.end method
