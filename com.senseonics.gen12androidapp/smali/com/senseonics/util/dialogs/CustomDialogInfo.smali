.class public Lcom/senseonics/util/dialogs/CustomDialogInfo;
.super Ljava/lang/Object;
.source "CustomDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private dialogType:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

.field private notificationId:I


# direct methods
.method public constructor <init>(Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p2, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->notificationId:I

    .line 15
    invoke-virtual {p0, p1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialogType(Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 38
    :cond_1
    check-cast p1, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 39
    iget v0, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->notificationId:I

    if-gez v0, :cond_2

    return v1

    .line 42
    :cond_2
    iget v0, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->notificationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/senseonics/util/dialogs/CustomDialogInfo;->notificationId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogType()Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->dialogType:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->notificationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public setDialogType(Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/senseonics/util/dialogs/CustomDialogInfo;->dialogType:Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    return-void
.end method
