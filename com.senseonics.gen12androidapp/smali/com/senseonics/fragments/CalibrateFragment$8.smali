.class Lcom/senseonics/fragments/CalibrateFragment$8;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->initBottomLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;

.field final synthetic val$tipsTextViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->val$tipsTextViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 793
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$1200(Lcom/senseonics/fragments/CalibrateFragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 794
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1, v0}, Lcom/senseonics/fragments/CalibrateFragment;->access$1202(Lcom/senseonics/fragments/CalibrateFragment;Z)Z

    .line 795
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$1300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800ff

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->val$tipsTextViewLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 798
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/senseonics/fragments/CalibrateFragment;->access$1202(Lcom/senseonics/fragments/CalibrateFragment;Z)Z

    .line 799
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$1300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f080100

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 800
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$8;->val$tipsTextViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
