.class Lcom/senseonics/fragments/AboutFragment$6;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/AboutFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/AboutFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/AboutFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment$6;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment$6;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/AboutFragment;->startMailClientIfExists()V

    return-void
.end method
