.class Lcom/senseonics/gen12androidapp/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SplashActivity;->getDeviceCompatibilityErrorAction()Lrx/functions/Action1;
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
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SplashActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SplashActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/gen12androidapp/SplashActivity;->access$000(Lcom/senseonics/gen12androidapp/SplashActivity;Ljava/lang/Boolean;)V

    return-void
.end method
