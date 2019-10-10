.class Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getPredictiveRatePickerManager(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)Lcom/senseonics/events/EventUtils$PickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

.field final synthetic val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showProgress()V

    .line 458
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$600(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    invoke-virtual {v2, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSelectedValueFromPicker(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V

    .line 460
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$700(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V

    :cond_0
    return-void
.end method
