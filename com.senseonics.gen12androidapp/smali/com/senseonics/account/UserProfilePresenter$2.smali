.class Lcom/senseonics/account/UserProfilePresenter$2;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;

.field final synthetic val$view:Lcom/senseonics/account/UserProfilePresenter$UserProfileView;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$2;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    iput-object p2, p0, Lcom/senseonics/account/UserProfilePresenter$2;->val$view:Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$2;->val$view:Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {p1}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->showProfileImageSelector()V

    return-void
.end method
