.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;
.super Ljava/lang/Object;
.source "TempGlucoseProfileFragment.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupAlarmHighOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$400(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseValueMg(Ljava/lang/String;)I

    move-result p1

    .line 446
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$800(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    .line 447
    invoke-virtual {v1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 446
    invoke-static {v1, p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 451
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$600(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setUsedAtLeastOnceForAttributeForProfileType(ZLcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 452
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$600(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void
.end method
