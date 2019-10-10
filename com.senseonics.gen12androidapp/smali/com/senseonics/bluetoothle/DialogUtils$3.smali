.class Lcom/senseonics/bluetoothle/DialogUtils$3;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$3;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$3;->val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$3;->val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    invoke-interface {p1}, Lcom/senseonics/util/dialogs/NotificationDialogManager;->rightButtonPressed()V

    .line 191
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
