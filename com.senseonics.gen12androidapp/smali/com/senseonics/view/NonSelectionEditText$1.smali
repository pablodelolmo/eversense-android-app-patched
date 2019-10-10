.class Lcom/senseonics/view/NonSelectionEditText$1;
.super Ljava/lang/Object;
.source "NonSelectionEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/NonSelectionEditText;->blockContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/NonSelectionEditText;


# direct methods
.method constructor <init>(Lcom/senseonics/view/NonSelectionEditText;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/senseonics/view/NonSelectionEditText$1;->this$0:Lcom/senseonics/view/NonSelectionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/senseonics/view/NonSelectionEditText$1;->this$0:Lcom/senseonics/view/NonSelectionEditText;

    invoke-virtual {p1}, Lcom/senseonics/view/NonSelectionEditText;->clearFocus()V

    const/4 p1, 0x0

    return p1
.end method
