.class public Lcom/senseonics/bluetoothle/ResponseOperations$Response;
.super Ljava/lang/Object;
.source "ResponseOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/ResponseOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private data:[I

.field private responseAccepted:Z

.field private responseId:I


# direct methods
.method public constructor <init>(IZ[I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->responseId:I

    .line 79
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->setResponseId(I)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->setResponseAccepted(Z)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->setData([I)V

    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->responseId:I

    .line 73
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->setResponseAccepted(Z)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->setData([I)V

    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->data:[I

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->responseId:I

    return v0
.end method

.method public isResponseAccepted()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->responseAccepted:Z

    return v0
.end method

.method public setData([I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->data:[I

    return-void
.end method

.method public setResponseAccepted(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->responseAccepted:Z

    return-void
.end method

.method public setResponseId(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->responseId:I

    return-void
.end method
