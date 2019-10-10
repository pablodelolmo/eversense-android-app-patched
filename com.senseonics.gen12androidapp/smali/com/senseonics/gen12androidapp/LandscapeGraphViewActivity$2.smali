.class Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;
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

    .line 69
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 72
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->emailer:Lcom/senseonics/util/Emailer;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    const v2, 0x7f0f00d3

    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f0f00cf

    .line 74
    invoke-virtual {v2, p1, v3}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    const v3, 0x1020002

    .line 75
    invoke-virtual {v2, v3}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/util/Emailer;->formShareEmail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
