.class public final Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "GlucoseSettingsPresenter$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private dialogUtils:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
            ">;"
        }
    .end annotation
.end field

.field private dmsStateModelSyncManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private settingHighAlarm:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private settingHighAlarmAdditional:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;",
            ">;"
        }
    .end annotation
.end field

.field private settingHighTarget:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;",
            ">;"
        }
    .end annotation
.end field

.field private settingLowAlarm:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private settingLowAlarmAdditional:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;",
            ">;"
        }
    .end annotation
.end field

.field private settingLowTarget:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;",
            ">;"
        }
    .end annotation
.end field

.field private settingPredictive:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;",
            ">;"
        }
    .end annotation
.end field

.field private settingPredictiveHigh:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;",
            ">;"
        }
    .end annotation
.end field

.field private settingPredictiveLow:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;",
            ">;"
        }
    .end annotation
.end field

.field private settingRate:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;",
            ">;"
        }
    .end annotation
.end field

.field private settingRateFalling:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;",
            ">;"
        }
    .end annotation
.end field

.field private settingRateRising:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;",
            ">;"
        }
    .end annotation
.end field

.field private stateModelUploadUtilitySOAP:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/StateModelUploadUtility_SOAP;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BasePresenter;",
            ">;"
        }
    .end annotation
.end field

.field private tempProfileManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdsController:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/ThresholdsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.GlucoseSettingsPresenter"

    const-string v1, "members/com.senseonics.gen12androidapp.GlucoseSettingsPresenter"

    .line 50
    const-class v2, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.util.ThresholdsController"

    .line 60
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->thresholdsController:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TempProfileManager"

    .line 61
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DialogUtils"

    .line 62
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DMSStateModelSyncManager"

    .line 63
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 64
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.StateModelUploadUtility_SOAP"

    .line 65
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->stateModelUploadUtilitySOAP:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 66
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "android.content.Context"

    .line 67
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->context:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 68
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 69
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_HighAlarm"

    .line 70
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighAlarm:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_LowAlarm"

    .line 71
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowAlarm:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_HighAlarm_Additional"

    .line 72
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighAlarmAdditional:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_LowAlarm_Additional"

    .line 73
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowAlarmAdditional:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_HighTarget"

    .line 74
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighTarget:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_LowTarget"

    .line 75
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowTarget:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_PredictiveAlerts"

    .line 76
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictive:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_PredictiveAlerts_High"

    .line 77
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictiveHigh:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_PredictiveAlerts_Low"

    .line 78
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictiveLow:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_RateAlerts"

    .line 79
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRate:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_RateAlerts_Falling"

    .line 80
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRateFalling:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_RateAlerts_Rising"

    .line 81
    const-class v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRateRising:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.BasePresenter"

    .line 82
    const-class v3, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
    .locals 26

    move-object/from16 v0, p0

    .line 122
    new-instance v15, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->thresholdsController:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/ThresholdsController;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/senseonics/util/AccountConstants;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->stateModelUploadUtilitySOAP:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/Context;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lde/greenrobot/event/EventBus;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighAlarm:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowAlarm:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighAlarmAdditional:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowAlarmAdditional:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighTarget:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowTarget:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictive:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictiveHigh:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictiveLow:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRate:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRateFalling:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRateRising:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    move-object v1, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    invoke-direct/range {v1 .. v23}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;-><init>(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 123
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->thresholdsController:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->stateModelUploadUtilitySOAP:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighAlarm:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowAlarm:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighAlarmAdditional:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowAlarmAdditional:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingHighTarget:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingLowTarget:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictive:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictiveHigh:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingPredictiveLow:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRate:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRateFalling:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->settingRateRising:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V

    return-void
.end method
