.class public Lcom/senseonics/authentication/UserLoginActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "UserLoginActivity.java"

# interfaces
.implements Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;


# instance fields
.field createAccountHyperlink:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900af
    .end annotation
.end field

.field forgotPasswordHyperlink:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011b
    .end annotation
.end field

.field loginButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090188
    .end annotation
.end field

.field password:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fe
    .end annotation
.end field

.field presenter:Lcom/senseonics/authentication/UserLoginPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field username:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->presenter:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/authentication/UserLoginPresenter;->attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->presenter:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->detach()V

    return-void
.end method

.method public getProvidedPassword()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvidedUsername()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleSuccessfulLogin()V
    .locals 3

    .line 60
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    .line 61
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/senseonics/authentication/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v0, 0x10008000

    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v1}, Lcom/senseonics/authentication/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Lcom/senseonics/authentication/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0037

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginActivity;->initializeLayout(I)Landroid/view/View;

    const/4 p1, 0x0

    const v0, 0x7f080091

    .line 51
    invoke-virtual {p0, v0, p1, p1}, Lcom/senseonics/authentication/UserLoginActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 54
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openCreateAccount()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/AccountConstants;->OpenCreateAccountURL(Landroid/content/Context;)V

    return-void
.end method

.method public openForgotPassword()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/AccountConstants;->OpenForgotPasswordURL(Landroid/content/Context;)V

    return-void
.end method

.method public setLoginButtonEnabled(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setUsernameText(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 112
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    new-instance v0, Lcom/senseonics/authentication/UserLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/authentication/UserLoginActivity$1;-><init>(Lcom/senseonics/authentication/UserLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 121
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {p1, p6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 125
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    new-instance p2, Lcom/senseonics/authentication/UserLoginActivity$2;

    invoke-direct {p2, p0}, Lcom/senseonics/authentication/UserLoginActivity$2;-><init>(Lcom/senseonics/authentication/UserLoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 136
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 138
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
