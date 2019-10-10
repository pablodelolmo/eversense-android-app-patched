.class public Lcom/senseonics/gen12androidapp/WebviewActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "WebviewActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private fileName:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/WebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/WebviewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->webview:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V
    .locals 4

    .line 103
    sget-object v0, Lcom/senseonics/gen12androidapp/WebviewActivity$1;->$SwitchMap$com$senseonics$util$Utils$MLCheckResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$MLCheckResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0f0138

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f027b

    .line 122
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f00f5

    .line 117
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0222

    .line 113
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f0296

    .line 109
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f0297

    .line 110
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f01e7

    .line 105
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p1, v0}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->dialog:Landroid/app/Dialog;

    .line 133
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->dialog:Landroid/app/Dialog;

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
    .locals 6

    .line 26
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b003a

    .line 28
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->initializeLayout(I)Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0902f1

    .line 32
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->webview:Landroid/webkit/WebView;

    .line 34
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "screen_type"

    .line 37
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "screen_type"

    .line 38
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "faq"

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_8

    .line 42
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 43
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FAQ_en.html"

    .line 46
    iput-object v2, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    const/4 v2, -0x1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xc81

    if-eq v4, v5, :cond_4

    const/16 v5, 0xdb4

    if-eq v4, v5, :cond_3

    const/16 v5, 0xdbe

    if-eq v4, v5, :cond_2

    const/16 v5, 0xe3d

    if-eq v4, v5, :cond_1

    const/16 v5, 0xe63

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "sv"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const-string v4, "ro"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const-string v4, "nl"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "nb"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const-string v4, "de"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "FAQ_ro.html"

    .line 61
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const-string p1, "FAQ_sv.html"

    .line 58
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    const-string p1, "FAQ_nb.html"

    .line 55
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    const-string p1, "FAQ_de.html"

    .line 52
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    const-string p1, "FAQ_nl.html"

    .line 49
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    .line 65
    :goto_2
    sget-object p1, Lcom/senseonics/util/Utils;->URL_FAQ:Ljava/lang/String;

    .line 66
    new-instance v2, Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;-><init>(Lcom/senseonics/gen12androidapp/WebviewActivity;)V

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "//icon_tips_arrow@2x.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "icon_tips_arrow@2x.png"

    const-string v0, ""

    .line 70
    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "icon_tips_arrow_down@2x.png"

    const-string v0, ""

    .line 71
    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "jquery-git2.js"

    const-string v0, ""

    .line 72
    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    :cond_6
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_7

    .line 77
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    :cond_7
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v2, "privacy"

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 84
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->naviBarTitle:Landroid/widget/TextView;

    const v2, 0x7f0f01cd

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Privacy_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDocumentLanguageToDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".html"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    const-string p1, "https://intranet.senseonics.com/SE/Privacy/"

    .line 90
    new-instance v2, Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;-><init>(Lcom/senseonics/gen12androidapp/WebviewActivity;)V

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lcom/senseonics/gen12androidapp/WebviewActivity$DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WebviewActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_9

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WebviewActivity;->fileName:Ljava/lang/String;

    const-string v0, "Privacy"

    invoke-static {p1, v0, p0}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
