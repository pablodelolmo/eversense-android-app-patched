.class Lcom/senseonics/bluetoothle/DialogUtils$6;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$predictiveAlertDialogInfo:Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;Landroid/content/Context;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$predictiveAlertDialogInfo:Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$predictiveAlertDialogInfo:Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rightButtonPressed()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$predictiveAlertDialogInfo:Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$activity:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$activity:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils$6;->val$activity:Landroid/content/Context;

    const-class v3, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
