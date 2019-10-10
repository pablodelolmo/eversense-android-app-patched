.class Lcom/senseonics/gen12androidapp/DosingMatchActivity$1;
.super Ljava/lang/Object;
.source "DosingMatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/DosingMatchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DosingMatchActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DosingMatchActivity;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingMatchActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingMatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 19
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingMatchActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingMatchActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/DosingMatchActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingMatchActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingNotOKActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/DosingMatchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
