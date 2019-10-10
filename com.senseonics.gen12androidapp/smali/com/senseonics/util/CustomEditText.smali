.class public Lcom/senseonics/util/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;
    }
.end annotation


# instance fields
.field private onImeBack:Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/senseonics/util/CustomEditText;->onImeBack:Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/senseonics/util/CustomEditText;->onImeBack:Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;

    invoke-virtual {p0}, Lcom/senseonics/util/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;->onImeBack(Lcom/senseonics/util/CustomEditText;Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnEditTextImeBackListener(Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/senseonics/util/CustomEditText;->onImeBack:Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;

    return-void
.end method
