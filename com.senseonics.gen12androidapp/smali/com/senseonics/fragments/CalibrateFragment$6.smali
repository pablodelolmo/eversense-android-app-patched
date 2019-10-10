.class Lcom/senseonics/fragments/CalibrateFragment$6;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->initGlucosePicker(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/CalibrateFragment;->access$700(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    .line 739
    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 738
    invoke-virtual {v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseValueMg(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$202(Lcom/senseonics/fragments/CalibrateFragment;I)I

    .line 740
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    .line 741
    invoke-virtual {p1}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/CalibrateFragment;->access$200(Lcom/senseonics/fragments/CalibrateFragment;)I

    move-result v0

    .line 740
    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 742
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->access$802(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 743
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$6;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$900(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/String;)V

    return-void
.end method
