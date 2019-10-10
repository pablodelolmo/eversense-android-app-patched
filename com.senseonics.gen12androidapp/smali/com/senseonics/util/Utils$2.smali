.class final Lcom/senseonics/util/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/Utils;->showCalibrationConfirmationPage(Landroid/content/Context;ILandroid/text/Spanned;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$submitOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/senseonics/util/Utils$2;->val$submitOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/senseonics/util/Utils$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/senseonics/util/Utils$2;->val$submitOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1363
    iget-object p1, p0, Lcom/senseonics/util/Utils$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
