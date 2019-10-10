.class Lcom/senseonics/gen12androidapp/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SplashActivity;->getDeviceCompatibilitySuccessAction()Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SplashActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SplashActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-static {v0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->access$000(Lcom/senseonics/gen12androidapp/SplashActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
