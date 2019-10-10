.class Lnet/simonvt/numberpicker/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 651
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$000(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 652
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lnet/simonvt/numberpicker/R$id;->np__increment:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    .line 654
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {p1, v3, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$300(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$300(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V

    :goto_0
    return v3
.end method
