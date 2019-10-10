.class Lcom/senseonics/gen12androidapp/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->highPriorityRequestFinished()V

    return-void
.end method
