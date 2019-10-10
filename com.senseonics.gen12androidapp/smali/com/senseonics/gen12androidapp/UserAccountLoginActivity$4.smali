.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;
.super Ljava/lang/Object;
.source "UserAccountLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->setupTvCreateAccountAndTvForgotPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AccountConstants;->OpenCreateAccountURL(Landroid/content/Context;)V

    return-void
.end method
