.class public interface abstract Lcom/senseonics/api/RegistrationIDService;
.super Ljava/lang/Object;
.source "RegistrationIDService.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "api/care/"


# virtual methods
.method public abstract getMyFollowerGCMRegIDs()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/FollowerGCMInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/care/GetMyFollowerGCMRegIDs"
    .end annotation
.end method
