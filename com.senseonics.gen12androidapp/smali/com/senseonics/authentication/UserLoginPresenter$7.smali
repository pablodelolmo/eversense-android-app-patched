.class Lcom/senseonics/authentication/UserLoginPresenter$7;
.super Ljava/lang/Object;
.source "UserLoginPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter;->handleLoginClicked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/authentication/UserLoginPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$7;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$600(Lcom/senseonics/authentication/UserLoginPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$700(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->hideProgress()V

    .line 108
    new-instance v0, Lcom/senseonics/authentication/UserLoginPresenter$7$1;

    invoke-direct {v0, p0}, Lcom/senseonics/authentication/UserLoginPresenter$7$1;-><init>(Lcom/senseonics/authentication/UserLoginPresenter$7;)V

    .line 115
    iget-object v1, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v1}, Lcom/senseonics/authentication/UserLoginPresenter;->access$1000(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/view/CommonErrorHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v2}, Lcom/senseonics/authentication/UserLoginPresenter;->access$900(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DialogShowingView;

    invoke-virtual {v1, v2, p1, v0}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-void
.end method
