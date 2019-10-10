.class public final enum Lcom/senseonics/util/Utils$GLUCOSE_UNIT;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLUCOSE_UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$GLUCOSE_UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

.field public static final enum GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

.field public static final enum GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 240
    new-instance v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const-string v1, "GLUCOSE_UNIT_MG_DL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    new-instance v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const-string v1, "GLUCOSE_UNIT_MMOL_L"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v0, 0x2

    .line 239
    new-array v0, v0, [Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->$VALUES:[Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$GLUCOSE_UNIT;
    .locals 1

    .line 239
    const-class v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$GLUCOSE_UNIT;
    .locals 1

    .line 239
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->$VALUES:[Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    return-object v0
.end method
