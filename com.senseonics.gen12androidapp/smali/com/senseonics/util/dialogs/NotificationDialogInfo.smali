.class public Lcom/senseonics/util/dialogs/NotificationDialogInfo;
.super Lcom/senseonics/util/dialogs/CustomDialogInfo;
.source "NotificationDialogInfo.java"


# instance fields
.field private ep:Lcom/senseonics/events/EventPoint;

.field private notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;


# direct methods
.method public constructor <init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;I)V
    .locals 1

    .line 12
    sget-object v0, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->NOTIFICATION_DIALOG:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    invoke-direct {p0, v0, p3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;-><init>(Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;I)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->setEventPoint(Lcom/senseonics/events/EventPoint;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    return-void
.end method


# virtual methods
.method public getEventPoint()Lcom/senseonics/events/EventPoint;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->ep:Lcom/senseonics/events/EventPoint;

    return-object v0
.end method

.method public getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public setEventPoint(Lcom/senseonics/events/EventPoint;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->ep:Lcom/senseonics/events/EventPoint;

    return-void
.end method

.method public setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method
