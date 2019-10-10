.class public Lcom/senseonics/util/dialogs/PlacementDialogInfo;
.super Ljava/lang/Object;
.source "PlacementDialogInfo.java"


# instance fields
.field private notificationDialogManager:Lcom/senseonics/util/dialogs/NotificationDialogManager;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/dialogs/NotificationDialogManager;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/senseonics/util/dialogs/PlacementDialogInfo;->notificationDialogManager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    return-void
.end method


# virtual methods
.method public getNotificationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/senseonics/util/dialogs/PlacementDialogInfo;->notificationDialogManager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    return-object v0
.end method
