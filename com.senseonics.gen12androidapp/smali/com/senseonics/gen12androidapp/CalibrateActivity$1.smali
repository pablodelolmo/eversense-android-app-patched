.class Lcom/senseonics/gen12androidapp/CalibrateActivity$1;
.super Ljava/lang/Object;
.source "CalibrateActivity.java"

# interfaces
.implements Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/CalibrateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/CalibrateActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/CalibrateActivity;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/CalibrateActivity$1;->this$0:Lcom/senseonics/gen12androidapp/CalibrateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public submit(Lcom/senseonics/events/CalibrationEventPoint;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/CalibrateActivity$1;->this$0:Lcom/senseonics/gen12androidapp/CalibrateActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->sendCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V

    .line 26
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/CalibrateActivity$1;->this$0:Lcom/senseonics/gen12androidapp/CalibrateActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/CalibrateActivity;->finish()V

    return-void
.end method
