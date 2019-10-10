.class public Lcom/senseonics/gen12androidapp/EulaScreenActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "EulaScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private fileName:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private EULAAccepted()V
    .locals 3

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 111
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveAcceptedEULAVersion(Landroid/content/Context;)V

    .line 113
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    .line 114
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v1

    .line 115
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v2

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const v0, 0x10008000

    if-eqz v2, :cond_2

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->showEULAConfirmation()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->EULAAccepted()V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method private showEULAConfirmation()V
    .locals 4

    .line 84
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 85
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b005b

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090091

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    new-instance v3, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090017

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    new-instance v3, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V
    .locals 4

    .line 134
    sget-object v0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$5;->$SwitchMap$com$senseonics$util$Utils$MLCheckResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$MLCheckResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0f0138

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f027b

    .line 153
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f00f5

    .line 148
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0222

    .line 144
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f0296

    .line 140
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f0297

    .line 141
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f01e7

    .line 136
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p1, v0}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    .line 163
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 29
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->initializeLayout(I)Landroid/view/View;

    const/4 p1, 0x0

    const v0, 0x7f080091

    .line 31
    invoke-virtual {p0, v0, p1, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0902f1

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    .line 34
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EULA_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDocumentLanguageToDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    const p1, 0x7f090091

    .line 41
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 42
    new-instance v1, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090017

    .line 50
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    new-instance v2, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "eula_init"

    .line 64
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "eula_init"

    .line 65
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    const-string v0, "EULA"

    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    const-string v0, "EULA"

    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
