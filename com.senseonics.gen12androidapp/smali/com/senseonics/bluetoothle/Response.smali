.class public Lcom/senseonics/bluetoothle/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[I

.field private responseAccepted:Z

.field private responseId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/senseonics/bluetoothle/Response$1;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/Response$1;-><init>()V

    sput-object v0, Lcom/senseonics/bluetoothle/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ[I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    .line 17
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Response;->setResponseId(I)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/senseonics/bluetoothle/Response;->setResponseAccepted(Z)V

    .line 19
    invoke-virtual {p0, p3}, Lcom/senseonics/bluetoothle/Response;->setData([I)V

    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 1

    const/4 v0, -0x1

    .line 12
    invoke-direct {p0, v0, p1, p2}, Lcom/senseonics/bluetoothle/Response;-><init>(IZ[I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    return v0
.end method

.method public isResponseAccepted()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    return v0
.end method

.method public setData([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 35
    new-array p1, p1, [I

    :cond_0
    iput-object p1, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    return-void
.end method

.method public setResponseAccepted(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    return-void
.end method

.method public setResponseId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    iget p2, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean p2, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object p2, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
