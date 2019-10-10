.class Lcom/senseonics/authentication/UserLoginPresenter$7$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter$7;->call(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter$7;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$7$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$7$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$800(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    return-void
.end method
