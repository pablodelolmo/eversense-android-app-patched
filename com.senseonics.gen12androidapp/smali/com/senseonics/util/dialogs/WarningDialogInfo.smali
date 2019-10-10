.class public Lcom/senseonics/util/dialogs/WarningDialogInfo;
.super Ljava/lang/Object;
.source "WarningDialogInfo.java"


# instance fields
.field private imageResId:I

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->setImageResId(I)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->setTitle(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/senseonics/util/dialogs/WarningDialogInfo;->imageResId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/util/dialogs/WarningDialogInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/senseonics/util/dialogs/WarningDialogInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/senseonics/util/dialogs/WarningDialogInfo;->imageResId:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/senseonics/util/dialogs/WarningDialogInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/senseonics/util/dialogs/WarningDialogInfo;->title:Ljava/lang/String;

    return-void
.end method
