.class Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$2;
.super Ljava/lang/Object;
.source "DailyCalibrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->dailyCalibrationFragment:Lcom/senseonics/fragments/DailyCalibrationFragment;

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->dailyCalibrationFragment:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setBothCalibrationTimeToCurrentModelValue()V

    :cond_0
    return-void
.end method
