.class public Lcom/senseonics/fragments/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected accountConstants:Lcom/senseonics/util/AccountConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alertHelper:Lcom/senseonics/util/AlertHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected calibrationHelper:Lcom/senseonics/model/CalibrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;

    invoke-virtual {p1, p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->inject(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "Fragments"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Name"

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 38
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method
