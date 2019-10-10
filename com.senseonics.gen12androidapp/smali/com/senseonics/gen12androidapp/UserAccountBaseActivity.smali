.class public Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "UserAccountBaseActivity.java"

# interfaces
.implements Lcom/senseonics/util/DMSTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field protected btnSync:Landroid/widget/TextView;

.field protected contentLayout:Landroid/widget/LinearLayout;

.field protected dialog:Landroid/app/Dialog;

.field protected dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    .line 42
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v0, "DMS(UABaseActivity)"

    .line 43
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->checkAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissProgressDialog()V

    return-void
.end method

.method private checkAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1, p2}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2, p2}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2, p1, v1, p2}, Lcom/senseonics/util/AccountConstants;->generateCheckAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance p2, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {p2, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const-string v1, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    invoke-virtual {p1, v1, v2, p2}, Lcom/senseonics/util/AccountConstants;->formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    .line 105
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    .line 106
    invoke-virtual {p2, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 107
    new-instance v0, Lcom/senseonics/util/DMSSSLSocketFactory;

    invoke-direct {v0, p2}, Lcom/senseonics/util/DMSSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 108
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p2, v0}, Lcom/senseonics/util/AccountConstants;->createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 113
    :try_start_1
    invoke-interface {p2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    :try_start_2
    sget-object p2, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 125
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string v0, "IO Exception"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 121
    :catch_1
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 122
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Connect timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :catch_2
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 119
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Socket timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :catch_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Client Protocol Exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "-1"
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object p1

    .line 134
    :catch_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Might be keystore exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-1"

    return-object p1

    .line 131
    :catch_5
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Unsupported Encoding Exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-1"

    return-object p1

    :cond_0
    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private setTextForBtnSync(Ljava/lang/String;)V
    .locals 1

    .line 82
    instance-of v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->btnSync:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    .line 353
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->resetBtnTextDismissProgressDialog()V

    return-void
.end method

.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    .line 292
    sget-object v2, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f027b

    .line 312
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f0f027e

    .line 313
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f013c

    .line 306
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f0f013b

    .line 307
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0222

    .line 302
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f0f0223

    .line 303
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f0296

    .line 298
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f0f0297

    .line 299
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f01e7

    .line 294
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f0f01e8

    .line 295
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_0
    :pswitch_4
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 256
    sget-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f027b

    .line 282
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0f027e

    .line 283
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f0134

    .line 277
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0f0135

    .line 278
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f013c

    .line 272
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0f013b

    .line 273
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f00fd

    .line 267
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0f00fe

    .line 268
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f0099

    .line 259
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f009a

    .line 260
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%@"

    .line 261
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%@"

    .line 262
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 321
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissDialog()V

    .line 322
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    .line 324
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected findViewForBtnSync()V
    .locals 1

    const v0, 0x7f09008a

    .line 77
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->btnSync:Landroid/widget/TextView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->initAccountSecurePreference()V

    .line 54
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->initAccountPreferences()V

    .line 56
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f100145

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f080099

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissDialog()V

    .line 69
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissProgressDialog()V

    .line 70
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method protected resetBtnTextDismissProgressDialog()V
    .locals 1

    const v0, 0x7f0f0244

    .line 328
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->setTextForBtnSync(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissProgressDialog()V

    return-void
.end method

.method protected setupBtnSyncOnClickEvent()V
    .locals 0

    return-void
.end method
