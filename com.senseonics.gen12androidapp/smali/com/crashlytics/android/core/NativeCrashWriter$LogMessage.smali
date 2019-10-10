.class final Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x6


# instance fields
.field logBytes:Lcom/crashlytics/android/core/ByteString;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/ByteString;)V
    .locals 2

    const/4 v0, 0x0

    .line 264
    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 265
    iput-object p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;->logBytes:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;->logBytes:Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;->logBytes:Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    return-void
.end method
