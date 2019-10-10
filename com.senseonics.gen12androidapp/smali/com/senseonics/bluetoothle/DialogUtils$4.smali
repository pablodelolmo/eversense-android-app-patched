.class Lcom/senseonics/bluetoothle/DialogUtils$4;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$alertDialogInfo:Lcom/senseonics/util/dialogs/AlertDialogInfo;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/AlertDialogInfo;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$4;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$4;->val$alertDialogInfo:Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$4;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$4;->val$alertDialogInfo:Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rightButtonPressed()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$4;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->access$000(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$4;->val$alertDialogInfo:Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
