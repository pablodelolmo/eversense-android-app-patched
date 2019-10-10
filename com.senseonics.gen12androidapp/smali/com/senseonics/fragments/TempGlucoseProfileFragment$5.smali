.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;
.super Ljava/lang/Object;
.source "TempGlucoseProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupTargetHighOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

.field final synthetic val$picker:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->val$picker:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 381
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0120

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 384
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$600(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v4, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    .line 389
    invoke-static {v4}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$600(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    move-result-object v4

    sget-object v5, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 388
    invoke-virtual {v3, v4, v5}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v5, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    .line 392
    invoke-static {v5}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$600(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    move-result-object v5

    sget-object v6, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 391
    invoke-virtual {v4, v5, v6}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v4

    .line 387
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/util/ThresholdsController;->getTargetHighValues(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$402(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 395
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$400(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/util/ThresholdsController;->getPosition(ILjava/util/ArrayList;)I

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$400(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;->val$picker:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->showDialog(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
