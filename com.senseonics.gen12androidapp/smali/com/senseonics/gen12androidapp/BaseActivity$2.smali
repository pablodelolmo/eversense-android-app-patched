.class Lcom/senseonics/gen12androidapp/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 97
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity$2;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity$2;->this$0:Lcom/senseonics/gen12androidapp/BaseActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    return-void
.end method
