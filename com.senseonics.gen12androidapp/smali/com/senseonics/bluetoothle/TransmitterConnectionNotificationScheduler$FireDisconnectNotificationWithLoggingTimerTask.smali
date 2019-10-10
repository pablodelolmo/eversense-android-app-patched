.class Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;
.super Ljava/util/TimerTask;
.source "TransmitterConnectionNotificationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FireDisconnectNotificationWithLoggingTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;


# direct methods
.method private constructor <init>(Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;->this$0:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;->this$0:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->access$100(Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;Z)V

    return-void
.end method
