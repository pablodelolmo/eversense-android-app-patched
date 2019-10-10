.class public final enum Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
.super Ljava/lang/Enum;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field public static final enum STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const-string v1, "STEP1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const-string v1, "STEP2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const-string v1, "STEP3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v0, 0x4

    .line 87
    new-array v0, v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    .locals 1

    .line 87
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    .locals 1

    .line 87
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-object v0
.end method
