.class Lcom/senseonics/fragments/PlacementGuideFragment$3$2;
.super Ljava/lang/Object;
.source "PlacementGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/PlacementGuideFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

.field final synthetic val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/PlacementGuideFragment$3;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;->val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;->this$1:Lcom/senseonics/fragments/PlacementGuideFragment$3;

    iget-object v1, v1, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-virtual {v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/senseonics/util/dialogs/PlacementDialogInfo;

    iget-object v3, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;->val$manager:Lcom/senseonics/util/dialogs/NotificationDialogManager;

    invoke-direct {v2, v3}, Lcom/senseonics/util/dialogs/PlacementDialogInfo;-><init>(Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createPlacementDialog(Landroid/app/Activity;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)Landroid/app/Dialog;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
