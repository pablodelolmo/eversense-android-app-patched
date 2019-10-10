.class public interface abstract Lcom/senseonics/account/UserProfilePresenter$UserProfileView;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/ProgressShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/account/UserProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserProfileView"
.end annotation


# virtual methods
.method public abstract displayProfileNameAndImage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setupProfileViews(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract showProfileImageSelector()V
.end method
