.class Lnet/simonvt/numberpicker/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 637
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$000(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 640
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lnet/simonvt/numberpicker/R$id;->np__increment:I

    if-ne p1, v0, :cond_0

    .line 642
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$1;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    :goto_0
    return-void
.end method
