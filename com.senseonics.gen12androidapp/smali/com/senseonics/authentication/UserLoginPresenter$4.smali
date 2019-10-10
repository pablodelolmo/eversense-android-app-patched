.class Lcom/senseonics/authentication/UserLoginPresenter$4;
.super Ljava/lang/Object;
.source "UserLoginPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 59
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$4;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    iput-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter$4;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$4;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$4;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/authentication/UserLoginPresenter$4;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/senseonics/authentication/UserLoginPresenter;->access$000(Lcom/senseonics/authentication/UserLoginPresenter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
