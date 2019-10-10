.class Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

.field final synthetic val$setting:Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->val$setting:Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 427
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$000(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showProgress()V

    .line 429
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->val$setting:Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$600(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;->writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V

    .line 431
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->access$700(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V

    :cond_0
    return-void
.end method
