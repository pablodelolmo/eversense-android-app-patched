.class Lcom/senseonics/fragments/CalibrateFragment$2;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$2;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/senseonics/fragments/CalibrateFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$2;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment$2;->val$editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/senseonics/fragments/CalibrateFragment;->access$000(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V

    const/4 p1, 0x0

    return p1
.end method
