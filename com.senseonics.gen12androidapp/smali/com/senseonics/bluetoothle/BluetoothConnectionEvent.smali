.class public Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;
.super Ljava/lang/Object;
.source "BluetoothConnectionEvent.java"


# instance fields
.field private isBluetoothEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;->isBluetoothEnabled:Z

    return-void
.end method


# virtual methods
.method public isBluetoothEnabled()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;->isBluetoothEnabled:Z

    return v0
.end method
