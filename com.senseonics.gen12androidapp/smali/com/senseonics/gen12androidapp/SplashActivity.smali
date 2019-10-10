.class public Lcom/senseonics/gen12androidapp/SplashActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "SplashActivity.java"


# instance fields
.field protected accountConstants:Lcom/senseonics/util/AccountConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field protected repository:Lcom/senseonics/compatibility/DeviceCompatibilityRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/SplashActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivityBasedOnCompatibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method private checkCompatibilityFromDMS()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->repository:Lcom/senseonics/compatibility/DeviceCompatibilityRepository;

    .line 118
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->getDeviceCompatibilitySuccessAction()Lrx/functions/Action1;

    move-result-object v1

    .line 119
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->getDeviceCompatibilityErrorAction()Lrx/functions/Action1;

    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/compatibility/DeviceCompatibilityRepository;->getCompatibilityResult(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private checkCompatibilityFromLocal()Z
    .locals 11

    const/4 v0, 0x0

    .line 164
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->loadJSONFromAsset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 166
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 167
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 168
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 169
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "Json Object"

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current Device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " brand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " product:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " model:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Version:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " SDK_int:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 172
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 174
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Manufacturer"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Model"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Model"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    :cond_0
    const/16 v7, 0x15

    if-lt v5, v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 184
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method private getDeviceCompatibilityErrorAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/senseonics/gen12androidapp/SplashActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SplashActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-object v0
.end method

.method private getDeviceCompatibilitySuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/senseonics/gen12androidapp/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SplashActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-object v0
.end method

.method private loadJSONFromAsset()Ljava/lang/String;
    .locals 2

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Device_List_CE.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 194
    new-array v1, v1, [B

    .line 195
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 196
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 197
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private startActivityBasedOnCompatibility(Ljava/lang/Boolean;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->startEULA()V

    goto :goto_0

    .line 145
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "eula_init"

    const-string v1, "true"

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    return-void
.end method

.method private startEULA()V
    .locals 3

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eula_init"

    const-string v2, "true"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0b0036

    .line 54
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->setContentView(I)V

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->presetLoggedInAndEnableAutoSync()V

    .line 60
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p1}, Lcom/senseonics/util/AlarmRingtoneManager;->setAlarmSoundsToDefaults()V

    .line 63
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreAllGlucoseProfilesToStateValueIfNeeded()V

    .line 66
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result p1

    .line 67
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_2

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveFirstRunForCompatibility(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 70
    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 74
    :cond_2
    invoke-static {p0}, Lcom/senseonics/util/Utils;->hasNewEULA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 78
    :cond_3
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRunForCompatibility(Landroid/content/Context;)Z

    move-result v1

    .line 79
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v2

    .line 80
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v3

    if-eqz v1, :cond_4

    .line 84
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->checkCompatibilityFromLocal()Z

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/gen12androidapp/SplashActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SplashActivity;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 99
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->startEULA()V

    .line 100
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    .line 103
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 105
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 107
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    :goto_1
    return-void
.end method
