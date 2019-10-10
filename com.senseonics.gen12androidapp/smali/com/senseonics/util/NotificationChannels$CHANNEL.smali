.class final enum Lcom/senseonics/util/NotificationChannels$CHANNEL;
.super Ljava/lang/Enum;
.source "NotificationChannels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/NotificationChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/NotificationChannels$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/NotificationChannels$CHANNEL;

.field public static final enum CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

.field public static final enum CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

.field public static final enum CHANNEL_FOREGROUND_OLD:Lcom/senseonics/util/NotificationChannels$CHANNEL;


# instance fields
.field private final id:Ljava/lang/String;

.field private final nameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;

    const-string v1, "CHANNEL_FOREGROUND_OLD"

    const-string v2, "CHANNEL_FOREGROUND"

    const v3, 0x7f0f019a

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND_OLD:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 10
    new-instance v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;

    const-string v1, "CHANNEL_FOREGROUND"

    const-string v2, "CHANNEL_FOREGROUND_V2"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 11
    new-instance v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;

    const-string v1, "CHANNEL_ALERT"

    const-string v2, "CHANNEL_ALERT"

    const/4 v3, 0x2

    const v6, 0x7f0f0199

    invoke-direct {v0, v1, v3, v2, v6}, Lcom/senseonics/util/NotificationChannels$CHANNEL;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/senseonics/util/NotificationChannels$CHANNEL;

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND_OLD:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    aput-object v1, v0, v3

    sput-object v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->$VALUES:[Lcom/senseonics/util/NotificationChannels$CHANNEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->id:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->nameResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/NotificationChannels$CHANNEL;
    .locals 1

    .line 8
    const-class v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/NotificationChannels$CHANNEL;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/NotificationChannels$CHANNEL;
    .locals 1

    .line 8
    sget-object v0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->$VALUES:[Lcom/senseonics/util/NotificationChannels$CHANNEL;

    invoke-virtual {v0}, [Lcom/senseonics/util/NotificationChannels$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/NotificationChannels$CHANNEL;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 26
    iget v0, p0, Lcom/senseonics/util/NotificationChannels$CHANNEL;->nameResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
