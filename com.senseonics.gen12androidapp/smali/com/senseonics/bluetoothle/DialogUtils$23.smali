.class Lcom/senseonics/bluetoothle/DialogUtils$23;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$23;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$23;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$23;->val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1044
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$23;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1045
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$23;->val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    invoke-interface {p1}, Lcom/senseonics/util/dialogs/NotificationDialogManager;->leftButtonPressed()V

    return-void
.end method
