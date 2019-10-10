.class public Lcom/senseonics/gen12androidapp/ApplicationModule;
.super Ljava/lang/Object;
.source "ApplicationModule.java"


# annotations
.annotation runtime Ldagger/Module;
    addsTo = Lcom/senseonics/gen12androidapp/AndroidModule;
    injects = {
        Lcom/senseonics/gen12androidapp/AboutActivity;,
        Lcom/senseonics/events/AlertEventActivity;,
        Lcom/senseonics/gen12androidapp/CalibrateActivity;,
        Lcom/senseonics/events/CalibrationEventActivity;,
        Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;,
        Lcom/senseonics/gen12androidapp/MealTimesActivity;,
        Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;,
        Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;,
        Lcom/senseonics/gen12androidapp/SoundSelectionActivity;,
        Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;,
        Lcom/senseonics/gen12androidapp/EulaScreenActivity;,
        Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;,
        Lcom/senseonics/events/EventActivity;,
        Lcom/senseonics/events/ExerciseEventActivity;,
        Lcom/senseonics/events/GlucoseEventActivity;,
        Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;,
        Lcom/senseonics/events/HealthEventActivity;,
        Lcom/senseonics/events/InsulinEventActivity;,
        Lcom/senseonics/events/MealEventActivity;,
        Lcom/senseonics/gen12androidapp/MyProductInfoActivity;,
        Lcom/senseonics/mycircle/home/MyCircleActivity;,
        Lcom/senseonics/mycircle/invite/InvitePeerActivity;,
        Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;,
        Lcom/senseonics/account/ProfileImageCropActivity;,
        Lcom/senseonics/account/ProfileImageSelectActivity;,
        Lcom/senseonics/gen12androidapp/MySensorActivity;,
        Lcom/senseonics/gen12androidapp/MyTransmitterActivity;,
        Lcom/senseonics/events/NotificationEventActivity;,
        Lcom/senseonics/gen12androidapp/NotificationsActivity;,
        Lcom/senseonics/gen12androidapp/SensorListActivity;,
        Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;,
        Lcom/senseonics/gen12androidapp/SplashActivity;,
        Lcom/senseonics/gen12androidapp/SystemSettingsActivity;,
        Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;,
        Lcom/senseonics/gen12androidapp/UserAccountActivity;,
        Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;,
        Lcom/senseonics/gen12androidapp/WebviewActivity;,
        Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;,
        Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;,
        Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;,
        Lcom/senseonics/fragments/CalibrateFragment;,
        Lcom/senseonics/fragments/EventLogFragment;,
        Lcom/senseonics/fragments/GraphFragment;,
        Lcom/senseonics/fragments/PlacementGuideFragment;,
        Lcom/senseonics/fragments/AboutFragment;,
        Lcom/senseonics/fragments/DailyCalibrationFragment;,
        Lcom/senseonics/fragments/MealTimesFragment;,
        Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;,
        Lcom/senseonics/fragments/TempGlucoseProfileFragment;,
        Lcom/senseonics/fragments/NotificationsFragment;,
        Lcom/senseonics/fragments/SettingsFragment;,
        Lcom/senseonics/util/TimeChangedReceiver;,
        Lcom/senseonics/util/AlarmReceiver;,
        Lcom/senseonics/gen12androidapp/BitmapSenderActivity;,
        Lcom/senseonics/gen12androidapp/PlacementGuideActivity;,
        Lcom/senseonics/util/LocaleChangedReceiver;,
        Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;,
        Lcom/senseonics/gen12androidapp/DosingOKActivity;,
        Lcom/senseonics/gen12androidapp/DosingMatchActivity;,
        Lcom/senseonics/gen12androidapp/DosingNotOKActivity;,
        Lcom/senseonics/gen12androidapp/DosingSummaryActivity;
    }
    library = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected provideAuthorizedClient(Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;Lcom/senseonics/authentication/AuthenticationInterceptor;)Lretrofit2/Retrofit;
    .locals 2
    .param p2    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/inject/Named;
            value = "DMSUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "AuthorizedClient"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 599
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 600
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 602
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 603
    invoke-virtual {p3, p4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    .line 604
    invoke-virtual {p3, v0, v1, p4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 605
    invoke-virtual {p3, v0, v1, p4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 606
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 601
    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 607
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 608
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method protected provideBackgroundLoginService(Lretrofit2/Retrofit;)Lcom/senseonics/api/UserLoginService;
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "LoginClient"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 619
    const-class v0, Lcom/senseonics/api/UserLoginService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/api/UserLoginService;

    return-object p1
.end method

.method protected provideBaseUrl()Lokhttp3/HttpUrl;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "DMSUrl"
    .end annotation

    const-string v0, "https://apiservice.eversensedms.com/"

    .line 551
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method protected provideBluetoothServiceCommandClient(Landroid/content/Context;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 517
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-direct {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected provideDefaultHashMapofIntegerToParsedResponse(Lcom/senseonics/model/PingParsedResponse;Lcom/senseonics/model/GlucoseLevelParsedResponse;Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;Lcom/senseonics/model/ReadSingleByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/ReadTwoByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/WriteTwoByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;Lcom/senseonics/model/SyncingParsedResponse;Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;)Lcom/senseonics/model/DefaultedHashMap;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/PingParsedResponse;",
            "Lcom/senseonics/model/GlucoseLevelParsedResponse;",
            "Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;",
            "Lcom/senseonics/model/ReadSingleByteSerialFlashRegisterParsedResponse;",
            "Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;",
            "Lcom/senseonics/model/ReadTwoByteSerialFlashRegisterParsedResponse;",
            "Lcom/senseonics/model/WriteTwoByteSerialFlashRegisterParsedResponse;",
            "Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;",
            "Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;",
            "Lcom/senseonics/model/SyncingParsedResponse;",
            "Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;",
            "Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;",
            "Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;",
            "Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;",
            "Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;",
            "Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;",
            ")",
            "Lcom/senseonics/model/DefaultedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;"
        }
    .end annotation

    move-object v0, p10

    .line 249
    new-instance v1, Lcom/senseonics/model/DefaultedHashMap;

    new-instance v2, Lcom/senseonics/model/NoOpParsedResponse;

    invoke-direct {v2}, Lcom/senseonics/model/NoOpParsedResponse;-><init>()V

    invoke-direct {v1, v2}, Lcom/senseonics/model/DefaultedHashMap;-><init>(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p1}, Lcom/senseonics/model/PingParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {p2}, Lcom/senseonics/model/GlucoseLevelParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p3}, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p4}, Lcom/senseonics/model/ReadSingleByteSerialFlashRegisterParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p4

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p5}, Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p5

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p6}, Lcom/senseonics/model/ReadTwoByteSerialFlashRegisterParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p6

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p7}, Lcom/senseonics/model/WriteTwoByteSerialFlashRegisterParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p7

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p8}, Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p8

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p9}, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;->getExpectedResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p9

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf0

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf1

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf2

    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p11}, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;->getExpectedResponseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p11

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual/range {p12 .. p12}, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;->getExpectedResponseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p12

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual/range {p13 .. p13}, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->getExpectedResponseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p13

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual/range {p14 .. p14}, Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;->getExpectedResponseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p14

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual/range {p15 .. p15}, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->getExpectedResponseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p15

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual/range {p16 .. p16}, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;->getExpectedResponseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p16

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/model/DefaultedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected provideDeviceCompatibilityService(Lretrofit2/Retrofit;)Lcom/senseonics/api/DeviceCompatibilityService;
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "PublicClient"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 614
    const-class v0, Lcom/senseonics/api/DeviceCompatibilityService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/api/DeviceCompatibilityService;

    return-object p1
.end method

.method protected provideGCMClient(Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;)Lretrofit2/Retrofit;
    .locals 3
    .param p2    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/inject/Named;
            value = "GCMUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "GCMClient"
    .end annotation

    .line 640
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 641
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 643
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 644
    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 645
    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 646
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 642
    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 647
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 648
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method protected provideGCMService(Lretrofit2/Retrofit;)Lcom/senseonics/api/GCMService;
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "GCMClient"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 654
    const-class v0, Lcom/senseonics/api/GCMService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/api/GCMService;

    return-object p1
.end method

.method protected provideGCMUrl()Lokhttp3/HttpUrl;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "GCMUrl"
    .end annotation

    const-string v0, "https://fcm.googleapis.com/"

    .line 557
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public provideIoScheduler()Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 545
    new-instance v0, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;-><init>()V

    return-object v0
.end method

.method protected provideLoginClient(Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;)Lretrofit2/Retrofit;
    .locals 3
    .param p1    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/inject/Named;
            value = "DMSUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "LoginClient"
    .end annotation

    .line 584
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 585
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 587
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 588
    invoke-virtual {p2, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 589
    invoke-virtual {p2, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 590
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 586
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 591
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 592
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method public provideMainThreadScheduler()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 539
    new-instance v0, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;-><init>()V

    return-object v0
.end method

.method protected provideMapOfInArrayToFourByteMemoryMapParsedResponse(Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;)Ljava/util/Map;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;",
            ")",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "readfourbyteregisters"
    .end annotation

    .line 456
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    invoke-virtual {p1}, Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-virtual {p2}, Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {p4}, Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {p5}, Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p6}, Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {p7}, Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {p8}, Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {p9}, Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {p10}, Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {p11}, Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected provideMapOfInArrayToMemoryMapParsedResponseForWrite(Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveLowAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveHighAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveFallingTimeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveRisingTimeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateAlertRisingThresholdSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateRisingAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteVibrateModeSingleByteMemoryMapParsedResponse;)Ljava/util/Map;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveLowAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveHighAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveFallingTimeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveRisingTimeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateAlertRisingThresholdSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateRisingAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteVibrateModeSingleByteMemoryMapParsedResponse;",
            ")",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "writesinglebyteregisters"
    .end annotation

    .line 493
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 494
    invoke-virtual {p1}, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-virtual {p2}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {p3}, Lcom/senseonics/model/ReadWritePredictiveAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {p4}, Lcom/senseonics/model/ReadWritePredictiveLowAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {p5}, Lcom/senseonics/model/ReadWritePredictiveHighAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-virtual {p6}, Lcom/senseonics/model/ReadWritePredictiveFallingTimeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-virtual {p7}, Lcom/senseonics/model/ReadWritePredictiveRisingTimeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p8}, Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {p9}, Lcom/senseonics/model/ReadWriteRateAlertRisingThresholdSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p9

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {p10}, Lcom/senseonics/model/ReadWriteRateAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p10

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-virtual {p11}, Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p12}, Lcom/senseonics/model/ReadWriteRateRisingAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p12

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual/range {p13 .. p13}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p13

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-virtual/range {p14 .. p14}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual/range {p15 .. p15}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p15

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual/range {p16 .. p16}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-virtual/range {p17 .. p17}, Lcom/senseonics/model/ReadWriteVibrateModeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected provideMapOfInArrayToSingleByteMemoryMapParsedresponse(Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadCurrentCalibrationPhaseSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteVibrateModeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadDoNotDisturbModeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveLowAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveHighAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveFallingTimeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWritePredictiveRisingTimeSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateAlertRisingThresholdSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteRateRisingAlertsActivatedSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/BatteryPercentageSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/HysteresisPercentageSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/HysteresisValueSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/HysteresisPredictivePercentageSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/HysteresisPredictiveValueSingleByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;Lcom/senseonics/model/ReadReadyForCalibrationSingleByteMemoryMapParsedResponse;)Ljava/util/Map;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadCurrentCalibrationPhaseSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteVibrateModeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadDoNotDisturbModeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveLowAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveHighAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveFallingTimeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWritePredictiveRisingTimeSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateAlertRisingThresholdSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteRateRisingAlertsActivatedSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/BatteryPercentageSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/HysteresisPercentageSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/HysteresisValueSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/HysteresisPredictivePercentageSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/HysteresisPredictiveValueSingleByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadReadyForCalibrationSingleByteMemoryMapParsedResponse;",
            ")",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "readsinglebyteregisters"
    .end annotation

    .line 304
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 305
    invoke-virtual {p1}, Lcom/senseonics/model/ReadClinicalModeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p2}, Lcom/senseonics/model/ReadCurrentCalibrationPhaseSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p3}, Lcom/senseonics/model/ReadWriteVibrateModeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p4}, Lcom/senseonics/model/ReadDoNotDisturbModeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p5}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p6}, Lcom/senseonics/model/ReadWritePredictiveAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p7}, Lcom/senseonics/model/ReadWritePredictiveLowAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p8}, Lcom/senseonics/model/ReadWritePredictiveHighAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p9}, Lcom/senseonics/model/ReadWritePredictiveFallingTimeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p9

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p10}, Lcom/senseonics/model/ReadWritePredictiveRisingTimeSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p10

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p11}, Lcom/senseonics/model/ReadWriteRateAlertFallingThresholdSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {p12}, Lcom/senseonics/model/ReadWriteRateAlertRisingThresholdSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p12

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual/range {p13 .. p13}, Lcom/senseonics/model/ReadWriteRateAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p13

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual/range {p14 .. p14}, Lcom/senseonics/model/ReadWriteRateFallingAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual/range {p15 .. p15}, Lcom/senseonics/model/ReadWriteRateRisingAlertsActivatedSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p15

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual/range {p16 .. p16}, Lcom/senseonics/model/BatteryPercentageSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual/range {p17 .. p17}, Lcom/senseonics/model/HysteresisPercentageSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual/range {p18 .. p18}, Lcom/senseonics/model/HysteresisValueSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual/range {p19 .. p19}, Lcom/senseonics/model/HysteresisPredictivePercentageSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual/range {p20 .. p20}, Lcom/senseonics/model/HysteresisPredictiveValueSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual/range {p21 .. p21}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual/range {p22 .. p22}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual/range {p23 .. p23}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual/range {p24 .. p24}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual/range {p25 .. p25}, Lcom/senseonics/model/ReadReadyForCalibrationSingleByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected provideMapOfInArrayToTwoByteMemoryMapParsedresponse(Lcom/senseonics/model/CalibrationsMadeInThisPhaseTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/SensorGlucoseSamplingIntervalTwoByteMemoryMappedParsedResponse;Lcom/senseonics/model/SensorInsertionDateTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/SensorInsertionTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/LastCalibrationDateTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/LastCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/CalibrationPhaseStartDateTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/CalibrationPhaseStartTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/SignalStrengthTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/AlgorithmParameterFormatVersionTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadEEP24MSPTwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadDayStartTimeTwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadNightStartTimeTwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue1TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue2TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue3TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue4TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue5TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue6TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue7TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue8TwoByteMemoryParsedResponse;Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/BatteryVoltageTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMinCalibrationThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMaxCalibrationThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMinutesBeforeNextCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMinutesAfterNextCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMinutesRemainingUntilCalibrationAllowedTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadNextScheduledCalibrationDateTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMostRecentGlucoseValueTwoByteMemoryMapParsedResponse;)Ljava/util/Map;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/CalibrationsMadeInThisPhaseTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/SensorGlucoseSamplingIntervalTwoByteMemoryMappedParsedResponse;",
            "Lcom/senseonics/model/SensorInsertionDateTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/SensorInsertionTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/LastCalibrationDateTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/LastCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/CalibrationPhaseStartDateTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/CalibrationPhaseStartTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/SignalStrengthTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/AlgorithmParameterFormatVersionTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadEEP24MSPTwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadDayStartTimeTwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadNightStartTimeTwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue1TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue2TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue3TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue4TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue5TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue6TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue7TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue8TwoByteMemoryParsedResponse;",
            "Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/BatteryVoltageTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMinCalibrationThresholdTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMaxCalibrationThresholdTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMinutesBeforeNextCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMinutesAfterNextCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMinutesRemainingUntilCalibrationAllowedTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadNextScheduledCalibrationDateTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadMostRecentGlucoseValueTwoByteMemoryMapParsedResponse;",
            ")",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "readtwobyteregisters"
    .end annotation

    .line 374
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 375
    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationsMadeInThisPhaseTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {p2}, Lcom/senseonics/model/SensorGlucoseSamplingIntervalTwoByteMemoryMappedParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p3}, Lcom/senseonics/model/SensorInsertionDateTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p4}, Lcom/senseonics/model/SensorInsertionTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {p5}, Lcom/senseonics/model/LastCalibrationDateTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p6}, Lcom/senseonics/model/LastCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {p7}, Lcom/senseonics/model/CalibrationPhaseStartDateTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {p8}, Lcom/senseonics/model/CalibrationPhaseStartTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {p9}, Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p9

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {p10}, Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p10

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p11}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p12}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object v2, p12

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual/range {p13 .. p13}, Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p13

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual/range {p14 .. p14}, Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual/range {p15 .. p15}, Lcom/senseonics/model/SignalStrengthTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p15

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual/range {p16 .. p16}, Lcom/senseonics/model/AlgorithmParameterFormatVersionTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual/range {p17 .. p17}, Lcom/senseonics/model/ReadEEP24MSPTwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual/range {p18 .. p18}, Lcom/senseonics/model/ReadDayStartTimeTwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual/range {p19 .. p19}, Lcom/senseonics/model/ReadNightStartTimeTwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual/range {p20 .. p20}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue1TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual/range {p21 .. p21}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue2TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual/range {p22 .. p22}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue3TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual/range {p23 .. p23}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue4TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual/range {p24 .. p24}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue5TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-virtual/range {p25 .. p25}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue6TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual/range {p26 .. p26}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue7TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual/range {p27 .. p27}, Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue8TwoByteMemoryParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual/range {p28 .. p28}, Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-virtual/range {p29 .. p29}, Lcom/senseonics/model/BatteryVoltageTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual/range {p30 .. p30}, Lcom/senseonics/model/ReadMinCalibrationThresholdTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual/range {p31 .. p31}, Lcom/senseonics/model/ReadMaxCalibrationThresholdTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual/range {p32 .. p32}, Lcom/senseonics/model/ReadMinutesBeforeNextCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual/range {p33 .. p33}, Lcom/senseonics/model/ReadMinutesAfterNextCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual/range {p34 .. p34}, Lcom/senseonics/model/ReadMinutesRemainingUntilCalibrationAllowedTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual/range {p35 .. p35}, Lcom/senseonics/model/ReadNextScheduledCalibrationDateTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual/range {p36 .. p36}, Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual/range {p37 .. p37}, Lcom/senseonics/model/ReadMostRecentGlucoseValueTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    move-object/from16 v2, p37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public provideMapOfInArrayToWriteTwoByteMemoryMapParsedresponse(Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;)Ljava/util/Map;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            "Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;",
            ")",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "writetwobyteregisters"
    .end annotation

    .line 430
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 431
    invoke-virtual {p1}, Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {p2}, Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {p3}, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-virtual {p4}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {p5}, Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {p6}, Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p7}, Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;->getMemoryAddress()[I

    move-result-object p1

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected provideMyCircleService(Lretrofit2/Retrofit;)Lcom/senseonics/api/MyCircleService;
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "AuthorizedClient"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 624
    const-class v0, Lcom/senseonics/api/MyCircleService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/api/MyCircleService;

    return-object p1
.end method

.method protected providePredictiveRateSetting_PredictiveAlerts()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 689
    new-instance v0, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;-><init>()V

    return-object v0
.end method

.method protected providePredictiveRateSetting_PredictiveAlerts_High()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 694
    new-instance v0, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;-><init>()V

    return-object v0
.end method

.method protected providePredictiveRateSetting_PredictiveAlerts_Low()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 699
    new-instance v0, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;-><init>()V

    return-object v0
.end method

.method protected providePredictiveRateSetting_RateAlerts()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 704
    new-instance v0, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;-><init>()V

    return-object v0
.end method

.method protected providePredictiveRateSetting_RateAlerts_Falling()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 709
    new-instance v0, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;-><init>()V

    return-object v0
.end method

.method protected providePredictiveRateSetting_RateAlerts_Rising()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 714
    new-instance v0, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;-><init>()V

    return-object v0
.end method

.method protected providePublicClient(Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;Lokhttp3/HttpUrl;Lokhttp3/logging/HttpLoggingInterceptor;)Lretrofit2/Retrofit;
    .locals 1
    .param p2    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/inject/Named;
            value = "DMSUrl"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "PublicClient"
    .end annotation

    .line 570
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 571
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 573
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 575
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 572
    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 576
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 577
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method protected provideRegistrationIDService(Lretrofit2/Retrofit;)Lcom/senseonics/api/RegistrationIDService;
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "AuthorizedClient"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 634
    const-class v0, Lcom/senseonics/api/RegistrationIDService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/api/RegistrationIDService;

    return-object p1
.end method

.method protected provideSecurePreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/securepreferences/SecurePreferences;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "SharedPrefFilename"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 725
    new-instance v0, Lcom/securepreferences/SecurePreferences;

    const-string v1, ""

    invoke-direct {v0, p1, v1, p2}, Lcom/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 726
    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->setLoggingEnabled(Z)V

    return-object v0
.end method

.method protected provideSharedPrefFilename()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SharedPrefFilename"
    .end annotation

    const-string v0, "user_prefs"

    return-object v0
.end method

.method protected provideThresholdSetting_HighAlarm()Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 659
    new-instance v0, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;-><init>()V

    return-object v0
.end method

.method protected provideThresholdSetting_HighAlarm_Additional()Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 669
    new-instance v0, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;-><init>()V

    return-object v0
.end method

.method protected provideThresholdSetting_HighTarget()Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 679
    new-instance v0, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;-><init>()V

    return-object v0
.end method

.method protected provideThresholdSetting_LowAlarm()Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 664
    new-instance v0, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;-><init>()V

    return-object v0
.end method

.method protected provideThresholdSetting_LowAlarm_Additional()Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 674
    new-instance v0, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;-><init>()V

    return-object v0
.end method

.method protected provideThresholdSetting_LowTarget()Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 684
    new-instance v0, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;-><init>()V

    return-object v0
.end method

.method protected provideTimer()Ljava/util/Timer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 522
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    return-object v0
.end method

.method protected provideUploadDataService(Lretrofit2/Retrofit;)Lcom/senseonics/api/UploadDataService;
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "AuthorizedClient"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 629
    const-class v0, Lcom/senseonics/api/UploadDataService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/api/UploadDataService;

    return-object p1
.end method

.method protected providesAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "alarm"

    .line 533
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    return-object p1
.end method

.method protected providesBluetoothAdapter()Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 528
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    return-object v0
.end method

.method protected providesHttpLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 562
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 563
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method
