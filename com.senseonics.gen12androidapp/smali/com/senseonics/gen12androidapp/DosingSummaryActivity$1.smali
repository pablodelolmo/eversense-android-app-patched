.class Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;
.super Ljava/lang/Object;
.source "DosingSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DosingSummaryActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DosingSummaryActivity;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingSummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 21
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingSummaryActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->saveIsDosingIntroCompleted(Landroid/content/Context;Z)V

    .line 23
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingSummaryActivity;

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingSummaryActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
