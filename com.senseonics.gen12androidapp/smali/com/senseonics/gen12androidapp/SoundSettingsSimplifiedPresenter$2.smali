.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    iput-object p3, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$values:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 202
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    if-ne p1, v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$300(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0237

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$000(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalDayTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result v0

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$layoutType:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    if-ne p1, v0, :cond_1

    .line 207
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$300(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0235

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$000(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalDayTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result v0

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$300(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f016c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$000(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result v0

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$values:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->showPicker(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
