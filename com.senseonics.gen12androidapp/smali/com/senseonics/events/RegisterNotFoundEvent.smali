.class public Lcom/senseonics/events/RegisterNotFoundEvent;
.super Ljava/lang/Object;
.source "RegisterNotFoundEvent.java"


# instance fields
.field private requestData:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/senseonics/events/RegisterNotFoundEvent;->requestData:[I

    return-void
.end method


# virtual methods
.method public getRequestData()[I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/senseonics/events/RegisterNotFoundEvent;->requestData:[I

    return-object v0
.end method
