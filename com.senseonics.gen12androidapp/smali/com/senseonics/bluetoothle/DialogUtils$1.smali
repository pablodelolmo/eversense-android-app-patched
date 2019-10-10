.class Lcom/senseonics/bluetoothle/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createPlacementDialog(Landroid/app/Activity;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$placementDialogInfo:Lcom/senseonics/util/dialogs/PlacementDialogInfo;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$1;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$1;->val$placementDialogInfo:Lcom/senseonics/util/dialogs/PlacementDialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$1;->val$placementDialogInfo:Lcom/senseonics/util/dialogs/PlacementDialogInfo;

    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/PlacementDialogInfo;->getNotificationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/util/dialogs/NotificationDialogManager;->leftButtonPressed()V

    return-void
.end method

.method public rightButtonPressed()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$1;->val$placementDialogInfo:Lcom/senseonics/util/dialogs/PlacementDialogInfo;

    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/PlacementDialogInfo;->getNotificationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/util/dialogs/NotificationDialogManager;->rightButtonPressed()V

    return-void
.end method
