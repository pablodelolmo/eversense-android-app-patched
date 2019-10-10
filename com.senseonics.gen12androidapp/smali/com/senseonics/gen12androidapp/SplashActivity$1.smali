.class Lcom/senseonics/gen12androidapp/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

.field final synthetic val$isCompatible:Z


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SplashActivity;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

    iput-boolean p2, p0, Lcom/senseonics/gen12androidapp/SplashActivity$1;->val$isCompatible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

    iget-boolean v1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$1;->val$isCompatible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SplashActivity;->access$000(Lcom/senseonics/gen12androidapp/SplashActivity;Ljava/lang/Boolean;)V

    return-void
.end method
