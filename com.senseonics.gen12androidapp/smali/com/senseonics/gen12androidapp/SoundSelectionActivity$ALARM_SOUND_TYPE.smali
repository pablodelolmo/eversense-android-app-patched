.class public final enum Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
.super Ljava/lang/Enum;
.source "SoundSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SoundSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALARM_SOUND_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

.field public static final enum ALARM_SOUND_TYPE_HIGH_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

.field public static final enum ALARM_SOUND_TYPE_LOW_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    const-string v1, "ALARM_SOUND_TYPE_LOW_DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_LOW_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    .line 17
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    const-string v1, "ALARM_SOUND_TYPE_HIGH_DAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_HIGH_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_LOW_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_HIGH_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->$VALUES:[Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
    .locals 1

    .line 15
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->$VALUES:[Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    return-object v0
.end method
