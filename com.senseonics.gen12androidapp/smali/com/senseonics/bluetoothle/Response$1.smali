.class final Lcom/senseonics/bluetoothle/Response$1;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/senseonics/bluetoothle/Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/senseonics/bluetoothle/Response;
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    new-array v2, v2, [I

    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 67
    new-instance p1, Lcom/senseonics/bluetoothle/Response;

    invoke-direct {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/Response;-><init>(IZ[I)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Response$1;->createFromParcel(Landroid/os/Parcel;)Lcom/senseonics/bluetoothle/Response;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/senseonics/bluetoothle/Response;
    .locals 0

    .line 72
    new-array p1, p1, [Lcom/senseonics/bluetoothle/Response;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Response$1;->newArray(I)[Lcom/senseonics/bluetoothle/Response;

    move-result-object p1

    return-object p1
.end method
