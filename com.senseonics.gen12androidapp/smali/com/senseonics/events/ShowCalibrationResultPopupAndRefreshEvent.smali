.class public Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;
.super Ljava/lang/Object;
.source "ShowCalibrationResultPopupAndRefreshEvent.java"


# instance fields
.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->title:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->title:Ljava/lang/String;

    return-object v0
.end method
