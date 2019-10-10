.class public Lcom/senseonics/events/DMSUploadResultEvent;
.super Ljava/lang/Object;
.source "DMSUploadResultEvent.java"


# instance fields
.field private result:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/senseonics/events/DMSUploadResultEvent;->result:Z

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/senseonics/events/DMSUploadResultEvent;->result:Z

    return v0
.end method
