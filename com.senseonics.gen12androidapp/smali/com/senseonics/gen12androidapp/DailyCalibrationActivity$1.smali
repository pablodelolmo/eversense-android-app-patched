.class Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;
.super Ljava/lang/Object;
.source "DailyCalibrationActivity.java"

# interfaces
.implements Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;
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

    .line 19
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEveningCalibrationSelected(IIZ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteEveningCalibrationTime(II)V

    :cond_0
    if-nez p3, :cond_1

    .line 46
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method public onMorningCalibrationSelected(IIZ)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteMorningCalibrationTime(II)V

    :cond_0
    if-nez p3, :cond_1

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method public settingsOk(Z)V
    .locals 0

    return-void
.end method
