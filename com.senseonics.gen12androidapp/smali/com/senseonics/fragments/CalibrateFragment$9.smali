.class Lcom/senseonics/fragments/CalibrateFragment$9;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->fetchCalibrationStatus()V
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

    .line 925
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$9;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$9;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/CalibrateFragment;->access$1500(Lcom/senseonics/fragments/CalibrateFragment;)V

    return-void
.end method
