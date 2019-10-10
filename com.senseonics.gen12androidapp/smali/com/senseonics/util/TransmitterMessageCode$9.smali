.class synthetic Lcom/senseonics/util/TransmitterMessageCode$9;
.super Ljava/lang/Object;
.source "TransmitterMessageCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/TransmitterMessageCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

.field static final synthetic $SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1234
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1147
    :catch_3
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    :try_start_4
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    sget-object v2, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
