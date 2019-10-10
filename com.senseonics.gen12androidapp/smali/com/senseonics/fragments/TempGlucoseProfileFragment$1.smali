.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;
.super Ljava/lang/Object;
.source "TempGlucoseProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupBtnStartStopOnClickEvent()V
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

    .line 291
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 294
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->stopTempProfile()V

    .line 298
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "Temp Profile"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Info"

    const-string v2, "User Stopped"

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 298
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v2, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v2, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 303
    invoke-virtual {v1, v2, v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 304
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v5, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    .line 305
    invoke-virtual {v3, v4, v5}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v3

    .line 301
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->startTempProfile(IIII)V

    .line 306
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "Temp Profile"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Info"

    const-string v2, "User Started"

    .line 307
    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 306
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$200(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    return-void
.end method
