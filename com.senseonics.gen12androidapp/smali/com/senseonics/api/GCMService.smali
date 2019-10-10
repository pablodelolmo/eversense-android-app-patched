.class public interface abstract Lcom/senseonics/api/GCMService;
.super Ljava/lang/Object;
.source "GCMService.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "fcm/"


# virtual methods
.method public abstract postGCM(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMMessage;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Content-Type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p3    # Lcom/senseonics/gcm/GCMMessage;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/senseonics/gcm/GCMMessage;",
            ")",
            "Lrx/Observable<",
            "Lcom/senseonics/gcm/GCMResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fcm/send"
    .end annotation
.end method
