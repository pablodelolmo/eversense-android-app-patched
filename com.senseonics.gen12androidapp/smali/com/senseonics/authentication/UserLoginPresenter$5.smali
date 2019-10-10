.class Lcom/senseonics/authentication/UserLoginPresenter$5;
.super Ljava/lang/Object;
.source "UserLoginPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 64
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$5;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    iput-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter$5;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$5;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {p1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedUsername()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter$5;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {p2}, Lcom/senseonics/authentication/UserLoginPresenter;->access$100(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/UserAccountModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/senseonics/account/UserAccountModel;->getCurrentUserDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$5;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setUsernameText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
