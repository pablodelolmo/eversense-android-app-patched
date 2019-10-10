.class Lcom/senseonics/authentication/UserLoginPresenter$6$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter$6;->call(Lcom/senseonics/mycircle/model/UserProfileDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/authentication/UserLoginPresenter$6;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter$6;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$6$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$6;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$6$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$6;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$6;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$400(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->handleSuccessfulLogin()V

    return-void
.end method
