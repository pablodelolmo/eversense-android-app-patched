.class Lcom/senseonics/bluetoothle/DialogUtils$21;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$helpText:Ljava/lang/String;

.field final synthetic val$stateText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->val$helpText:Ljava/lang/String;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->val$stateText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1002
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1003
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0b0062

    .line 1005
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f090157

    .line 1007
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1009
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1010
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->val$helpText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090158

    .line 1012
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1013
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$21;->val$stateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
