.class synthetic Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;
.super Ljava/lang/Object;
.source "SoundSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SoundSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->values()[Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;->$SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;->$SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_LOW_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;->$SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I

    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_HIGH_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
