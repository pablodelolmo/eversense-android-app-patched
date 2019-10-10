.class Lcom/senseonics/bluetoothle/DialogUtils$5;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$calibrateDialogInfo:Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

.field final synthetic val$calibrationManager:Lcom/senseonics/util/dialogs/NotificationDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->val$calibrationManager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->val$calibrateDialogInfo:Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->val$calibrateDialogInfo:Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rightButtonPressed()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->val$calibrationManager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    invoke-interface {v0}, Lcom/senseonics/util/dialogs/NotificationDialogManager;->rightButtonPressed()V

    .line 343
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$5;->val$calibrateDialogInfo:Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
