.class Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;
.super Ljava/lang/Object;
.source "LandscapeGraphViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->finish()V

    return-void
.end method
