.class public Lcom/senseonics/bluetoothle/TransmitterStatusChecker;
.super Ljava/lang/Object;
.source "TransmitterStatusChecker.java"


# instance fields
.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field protected code:Lcom/senseonics/util/TransmitterMessageCode;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field model:Lcom/senseonics/model/TransmitterStateModel;

.field private notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;


# direct methods
.method constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lcom/senseonics/util/NotificationEventPersistor;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 28
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    .line 29
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    .line 30
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 31
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 32
    iput-object p6, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 33
    iput-object p7, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->eventBus:Lde/greenrobot/event/EventBus;

    .line 34
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method fireAlert()V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->getStateValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->shouldShowAlert()Z

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/util/NotificationEventPersistor;->createNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;Z)Lcom/senseonics/events/EventPoint;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->updateStateValue(Z)V

    .line 58
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {v2, v1, v3}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getStateValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowAlert()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateStateValue(Z)V
    .locals 0

    return-void
.end method
