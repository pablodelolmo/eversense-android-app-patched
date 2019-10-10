.class Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field final synthetic val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iput-object p3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 304
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    .line 306
    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$100(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTitleID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    .line 307
    invoke-static {v2}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$200(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/util/ThresholdsController;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v4}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$300(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAvailablePickerValues(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    .line 309
    invoke-static {v4}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$200(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/util/ThresholdsController;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v5

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$300(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getPickerPosition(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)I

    move-result v3

    .line 305
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showPicker(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    :cond_0
    return-void
.end method
