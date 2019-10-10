.class public final enum Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HEALTH_CONDITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum ALCOHOL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum ALLERGY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum COUGH_COLD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum DIARRHEA:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum DIZZY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum EARACHE:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum FEVER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum FLU:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum HIGH_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum INFECTION:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum LOW_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum MENSTRUAL_PERIOD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum NAUSEA_VOMITING:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum OTHER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum SORE_THROAT:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum STRESS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum TIRED:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 30
    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "COUGH_COLD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->COUGH_COLD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "SORE_THROAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->SORE_THROAT:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "TIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->TIRED:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "STRESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->STRESS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "FEVER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FEVER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "FLU"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FLU:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "MENSTRUAL_PERIOD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->MENSTRUAL_PERIOD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "NAUSEA_VOMITING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NAUSEA_VOMITING:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "DIARRHEA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIARRHEA:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "ALLERGY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALLERGY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "EARACHE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->EARACHE:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "INFECTION"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->INFECTION:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "DIZZY"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIZZY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "ALCOHOL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALCOHOL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "LOW_SYMPTOMS"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->LOW_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "HIGH_SYMPTOMS"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->HIGH_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "OTHER"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->OTHER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v0, 0x12

    .line 29
    new-array v0, v0, [Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->COUGH_COLD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->SORE_THROAT:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->TIRED:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->STRESS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FEVER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FLU:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->MENSTRUAL_PERIOD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NAUSEA_VOMITING:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIARRHEA:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v11

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALLERGY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v12

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->EARACHE:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v13

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->INFECTION:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    aput-object v1, v0, v14

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIZZY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALCOHOL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->LOW_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->HIGH_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->OTHER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->$VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
    .locals 1

    .line 29
    const-class v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
    .locals 1

    .line 29
    sget-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->$VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-object v0
.end method
