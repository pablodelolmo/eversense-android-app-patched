.class Lcom/senseonics/account/UserProfilePresenter$1;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


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


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$1;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$1;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v0}, Lcom/senseonics/account/UserProfilePresenter;->access$000(Lcom/senseonics/account/UserProfilePresenter;)V

    return-void
.end method
