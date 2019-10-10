.class public Lcom/senseonics/util/AppUpdateChecker;
.super Ljava/lang/Object;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;,
        Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;,
        Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;,
        Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final CHECK_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a0

    .line 32
    iput v0, p0, Lcom/senseonics/util/AppUpdateChecker;->CHECK_INTERVAL:I

    const-string v0, "AppUpdate"

    .line 34
    iput-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->TAG:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 75
    iput-object p2, p0, Lcom/senseonics/util/AppUpdateChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 77
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/util/AppUpdateChecker;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/util/AppUpdateChecker;->getVersionFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/util/AppUpdateChecker;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/AppUpdateChecker;->decodeVersionFile(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/util/AppUpdateChecker;Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->setCurrentDateTimeToAppUpdateLastCheckedInPreference(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;)Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-object p1
.end method

.method private checkIfValidVersionString(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 266
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 271
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 273
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;
    .locals 6

    const-string v0, "\""

    const-string v1, ""

    .line 284
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    .line 285
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, ""

    .line 287
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    const-string v1, ""

    .line 288
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string v0, ""

    .line 290
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 294
    :cond_0
    invoke-direct {p0, p2}, Lcom/senseonics/util/AppUpdateChecker;->checkIfValidVersionString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_1
    if-eqz p1, :cond_a

    const-string v0, ""

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->checkIfValidVersionString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_3
    const-string v0, "\\."

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 309
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 310
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 311
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v5, "\\."

    .line 314
    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 316
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 317
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 318
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le v0, v1, :cond_4

    .line 323
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_4
    if-ge v0, v1, :cond_5

    .line 327
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_5
    if-le v2, v3, :cond_6

    .line 334
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_6
    if-ge v2, v3, :cond_7

    .line 338
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_7
    if-le p2, p1, :cond_8

    .line 345
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_8
    if-ge p2, p1, :cond_9

    .line 349
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    .line 353
    :cond_9
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_SAME:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    .line 299
    :cond_a
    :goto_0
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    .line 291
    :cond_b
    :goto_1
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1
.end method

.method private decodeVersionFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v0, "\r"

    const-string v1, ""

    .line 228
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, ""

    .line 229
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdate"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 236
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 237
    aget-object p1, p1, v2

    const-string v2, "AppUpdate"

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "otherInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 244
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdate"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server app version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AppUpdate"

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1, v1}, Lcom/senseonics/util/AppUpdateChecker;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    move-result-object p1

    const-string v0, "AppUpdate"

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compare result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    if-ne p1, v0, :cond_0

    .line 254
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1, p2, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->fireUpdateAppPopup(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getAppUpdateLastCheckedDateTimeFromPreference(Landroid/content/Context;)J
    .locals 2

    const-string v0, "AppUpdateLastCheckedDateTime"

    .line 90
    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getVersionFile()Ljava/lang/String;
    .locals 8

    .line 172
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 174
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v1

    const-string v2, "ntlm"

    new-instance v3, Lcom/senseonics/util/NTLMSchemeFactory;

    invoke-direct {v3}, Lcom/senseonics/util/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 175
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    new-instance v2, Lorg/apache/http/auth/AuthScope;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/apache/http/auth/NTCredentials;

    sget-object v4, Lcom/senseonics/util/Utils;->INTRANET_UN:Ljava/lang/String;

    sget-object v5, Lcom/senseonics/util/Utils;->INTRANET_PW:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    const-string v1, "https://intranet.senseonics.com/SE/Releases/AndroidMMAAppStoreVersion.txt"

    .line 183
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    .line 188
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/senseonics/util/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v2

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 210
    :try_start_2
    sget-object v2, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v3, "AppUpdate"

    const-string v4, "IO Exception"

    .line 211
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    .line 207
    :catch_1
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v2, "AppUpdate"

    const-string v3, "Connect timeout"

    .line 208
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :catch_2
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v2, "AppUpdate"

    const-string v3, "Socket timeout"

    .line 205
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string v0, "AppUpdate"

    const-string v2, "Client Protocol Exception"

    .line 202
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 214
    :goto_0
    sget-object v2, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    if-eq v0, v2, :cond_1

    const-string v0, "-1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object v0

    :cond_1
    return-object v1

    :catch_4
    const-string v0, "AppUpdate"

    const-string v1, "Might be keystore exception"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-1"

    return-object v0
.end method

.method private isItTimeToCheck(Landroid/content/Context;)Z
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AppUpdateLastCheckedDateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->resetAppUpdateLastCheckedInPreference(Landroid/content/Context;)V

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->getAppUpdateLastCheckedDateTimeFromPreference(Landroid/content/Context;)J

    move-result-wide v0

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-string v6, "AppUpdate"

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTimeInMills:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|lastCheckTimeInMillis:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|diff:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    const-string v0, "AppUpdate"

    const-string v2, "invalid time"

    .line 107
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->resetAppUpdateLastCheckedInPreference(Landroid/content/Context;)V

    return v1

    :cond_1
    const-wide/32 v2, 0x5265c00

    cmp-long p1, v4, v2

    if-gez p1, :cond_2

    const-string p1, "AppUpdate"

    const-string v0, "Less than (1440 minutes)"

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private resetAppUpdateLastCheckedInPreference(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AppUpdateLastCheckedDateTime"

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private setCurrentDateTimeToAppUpdateLastCheckedInPreference(Landroid/content/Context;)V
    .locals 3

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "AppUpdateLastCheckedDateTime"

    .line 86
    invoke-static {p1, v2, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public checkForSoftwareUpdate(Landroid/content/Context;)V
    .locals 3

    .line 122
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->isItTimeToCheck(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AppUpdate"

    const-string v0, "PANIC: it is not the time"

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    if-ne v0, v1, :cond_1

    const-string p1, "AppUpdate"

    const-string v0, "PANIC: processed alreay started!"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    iput-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    .line 134
    invoke-static {p1}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "AppUpdate"

    const-string v0, "PANIC: No Internet"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void

    .line 140
    :cond_2
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;-><init>(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
