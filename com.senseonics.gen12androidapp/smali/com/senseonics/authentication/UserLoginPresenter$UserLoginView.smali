.class public interface abstract Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;
.super Ljava/lang/Object;
.source "UserLoginPresenter.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/authentication/UserLoginPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserLoginView"
.end annotation


# virtual methods
.method public abstract getProvidedPassword()Ljava/lang/String;
.end method

.method public abstract getProvidedUsername()Ljava/lang/String;
.end method

.method public abstract handleSuccessfulLogin()V
.end method

.method public abstract openCreateAccount()V
.end method

.method public abstract openForgotPassword()V
.end method

.method public abstract setLoginButtonEnabled(Z)V
.end method

.method public abstract setUsernameText(Ljava/lang/String;)V
.end method

.method public abstract setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;)V
.end method
