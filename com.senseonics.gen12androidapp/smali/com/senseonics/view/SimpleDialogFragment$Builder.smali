.class public Lcom/senseonics/view/SimpleDialogFragment$Builder;
.super Ljava/lang/Object;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 2

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TITLE_KEY"

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MESSAGE_KEY"

    .line 171
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "STATUS_IMAGE_KEY"

    .line 172
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "CANCELLABLE_KEY"

    .line 173
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    new-instance p1, Lcom/senseonics/view/SimpleDialogFragment;

    invoke-direct {p1}, Lcom/senseonics/view/SimpleDialogFragment;-><init>()V

    .line 176
    invoke-virtual {p1, v0}, Lcom/senseonics/view/SimpleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p4, :cond_0

    .line 178
    invoke-virtual {p1, p4}, Lcom/senseonics/view/SimpleDialogFragment;->setOnDismissListener(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-object p1
.end method
