.class Lcom/senseonics/fragments/CalibrateFragment$3;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->setupSubmitEvent()V
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

    .line 232
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$3;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 235
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$3;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$400(Lcom/senseonics/fragments/CalibrateFragment;)Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    move-result-object p1

    new-instance v0, Lcom/senseonics/events/CalibrationEventPoint;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment$3;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    .line 237
    invoke-static {v1}, Lcom/senseonics/fragments/CalibrateFragment;->access$100(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment$3;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    .line 238
    invoke-static {v2}, Lcom/senseonics/fragments/CalibrateFragment;->access$200(Lcom/senseonics/fragments/CalibrateFragment;)I

    move-result v2

    sget-object v3, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 239
    invoke-virtual {v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/fragments/CalibrateFragment$3;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    .line 240
    invoke-static {v4}, Lcom/senseonics/fragments/CalibrateFragment;->access$300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 235
    invoke-interface {p1, v0}, Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;->submit(Lcom/senseonics/events/CalibrationEventPoint;)V

    return-void
.end method
