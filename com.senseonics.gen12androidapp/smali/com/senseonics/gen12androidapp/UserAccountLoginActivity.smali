.class public Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;
.super Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.source "UserAccountLoginActivity.java"


# instance fields
.field private Tag:Ljava/lang/String;

.field private tvCreateAccount:Landroid/widget/TextView;

.field private tvForgotPassword:Landroid/widget/TextView;

.field private tvUserNameOrEmail:Landroid/widget/TextView;

.field private txtPassword:Landroid/widget/EditText;

.field private txtUserName:Landroid/widget/EditText;

.field private txtUserNameCover:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;-><init>()V

    const-string v0, "DMS(UALoginActivity)"

    .line 27
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->Tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method private displayLoginSuccessDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->isThisActivityTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 222
    :cond_0
    new-instance v0, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance p2, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;

    invoke-direct {p2, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {p1, p0, v0, p2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    .line 245
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private findViewsForAccountInfo()V
    .locals 1

    const v0, 0x7f090106

    .line 111
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    const v0, 0x7f090105

    .line 112
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    const v0, 0x7f090104

    .line 113
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    const v0, 0x7f0902c9

    .line 114
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    const v0, 0x7f0902cd

    .line 115
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    const v0, 0x7f0902d2

    .line 116
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvUserNameOrEmail:Landroid/widget/TextView;

    return-void
.end method

.method private setupTvCreateAccountAndTvForgotPassword()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\'#\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "</a> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\'#\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "</a> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$5;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$5;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 252
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->resetBtnTextDismissProgressDialog()V

    return-void
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 182
    sget-object p2, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$8;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    const p2, 0x7f0f027b

    .line 204
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f027e

    .line 205
    invoke-virtual {p0, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0f013c

    .line 197
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f013b

    .line 198
    invoke-virtual {p0, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0f0084

    .line 185
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f014d

    .line 186
    invoke-virtual {p0, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "AccountIsLoggedIn"

    const/4 v1, 0x1

    .line 189
    invoke-static {p0, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 191
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserName"

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserID"

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "AccountUserPassword"

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne p1, v0, :cond_0

    .line 210
    invoke-direct {p0, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayLoginSuccessDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0039

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->initializeLayout(I)Landroid/view/View;

    .line 35
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    const v1, 0x7f080091

    .line 37
    invoke-virtual {p0, v1, p1, p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewsForAccountInfo()V

    .line 41
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewForBtnSync()V

    .line 44
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvUserNameOrEmail:Landroid/widget/TextView;

    const v2, 0x7f0f00ce

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/AccountConstants;->getCoveredUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 88
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->setupTvCreateAccountAndTvForgotPassword()V

    .line 101
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->setupBtnSyncOnClickEvent()V

    .line 102
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "force_logout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f00fa

    .line 106
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setupBtnSyncOnClickEvent()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
