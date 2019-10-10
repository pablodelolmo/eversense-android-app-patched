.class Lcom/senseonics/authentication/UserLoginPresenter$1;
.super Lcom/senseonics/gen12androidapp/AfterTextChangedTextWatcher;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter;->attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/authentication/UserLoginPresenter;

.field final synthetic val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    iput-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/AfterTextChangedTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {p1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {p1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    return-void
.end method
