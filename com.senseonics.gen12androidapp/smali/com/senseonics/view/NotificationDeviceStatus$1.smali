.class Lcom/senseonics/view/NotificationDeviceStatus$1;
.super Ljava/lang/Object;
.source "NotificationDeviceStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/NotificationDeviceStatus;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/NotificationDeviceStatus;


# direct methods
.method constructor <init>(Lcom/senseonics/view/NotificationDeviceStatus;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus$1;->this$0:Lcom/senseonics/view/NotificationDeviceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus$1;->this$0:Lcom/senseonics/view/NotificationDeviceStatus;

    invoke-virtual {p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/senseonics/events/StatusHeaderTapEvent;

    invoke-direct {v0}, Lcom/senseonics/events/StatusHeaderTapEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
