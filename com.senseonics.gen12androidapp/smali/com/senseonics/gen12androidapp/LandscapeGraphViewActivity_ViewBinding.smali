.class public Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LandscapeGraphViewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    const-string v0, "field \'title\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->title:Landroid/widget/TextView;

    const-string v0, "field \'spinner\'"

    .line 24
    const-class v1, Landroid/widget/Spinner;

    const v2, 0x7f09025d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    const-string v0, "field \'shareImageButton\'"

    .line 25
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090247

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->shareImageButton:Landroid/widget/ImageButton;

    const-string v0, "field \'progressBar\'"

    .line 26
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f09020d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->title:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    .line 37
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->shareImageButton:Landroid/widget/ImageButton;

    .line 38
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 40
    iput-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    return-void
.end method
