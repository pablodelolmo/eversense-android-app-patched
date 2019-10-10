.class public final enum Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INSULIN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$INSULIN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum INTERMEDIATE_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum LONG_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum MIXED_50_50:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum MIXED_70_30:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum MIXED_75_25:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum OTHER:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum SHORT_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "RAPID_ACTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "SHORT_ACTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->SHORT_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "INTERMEDIATE_ACTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->INTERMEDIATE_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "LONG_ACTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->LONG_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "MIXED_70_30"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_70_30:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "MIXED_50_50"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_50_50:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "MIXED_75_25"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_75_25:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "OTHER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->OTHER:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const/16 v0, 0x8

    .line 25
    new-array v0, v0, [Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->SHORT_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->INTERMEDIATE_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->LONG_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_70_30:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_50_50:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_75_25:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->OTHER:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v1, v0, v9

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->$VALUES:[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
    .locals 1

    .line 25
    const-class v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
    .locals 1

    .line 25
    sget-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->$VALUES:[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-object v0
.end method
