.class Lcom/senseonics/mycircle/home/MyCirclePresenter$2;
.super Ljava/lang/Object;
.source "MyCirclePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/home/MyCirclePresenter;->attach(Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

.field final synthetic val$view:Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$2;->this$0:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$2;->val$view:Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter$2;->val$view:Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-interface {p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->startActivity()V

    return-void
.end method
