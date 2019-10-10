.class Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getPredictiveRateLayoutClickListener(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field final synthetic val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    iput-object p3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 442
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    .line 443
    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$100(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueTitleID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    .line 444
    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getAvailablePickerValues()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->val$setting:Lcom/senseonics/gen12androidapp/PredictiveRateSetting;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    .line 446
    invoke-static {v4}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getPickerPosition(Lcom/senseonics/model/TransmitterStateModel;)I

    move-result v3

    .line 442
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showPicker(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
