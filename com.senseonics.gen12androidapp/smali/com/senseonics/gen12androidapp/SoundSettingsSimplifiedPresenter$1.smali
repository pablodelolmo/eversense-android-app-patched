.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

.field final synthetic val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

.field final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Ljava/util/ArrayList;Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->val$values:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->val$values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$000(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-interface {v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->showProgress()V

    .line 174
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    sget-object v2, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    if-ne v1, v2, :cond_0

    .line 175
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$100(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteLowGlucoseAlarmRepeatIntervalDayTime(I)V

    .line 177
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$100(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteLowGlucoseAlarmRepeatIntervalNightTime(I)V

    .line 178
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$200(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    sget-object v2, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    if-ne v1, v2, :cond_1

    .line 181
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$100(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseAlarmRepeatIntervalDayTime(I)V

    .line 183
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$100(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseAlarmRepeatIntervalNightTime(I)V

    .line 184
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$200(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v2, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "BLE Disconnect Setting"

    invoke-direct {v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "Minutes"

    .line 189
    invoke-virtual {v2, v3, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object p1

    check-cast p1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 188
    invoke-virtual {v1, p1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 190
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$100(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteDelayBLEDisconnectAlarmAddressRequest(I)V

    :cond_2
    :goto_0
    return-void
.end method
