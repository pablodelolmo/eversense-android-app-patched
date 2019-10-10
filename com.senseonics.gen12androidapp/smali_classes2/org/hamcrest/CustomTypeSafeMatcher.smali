.class public abstract Lorg/hamcrest/CustomTypeSafeMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "CustomTypeSafeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final fixedDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Description must be non null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_0
    iput-object p1, p0, Lorg/hamcrest/CustomTypeSafeMatcher;->fixedDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeTo(Lorg/hamcrest/Description;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/hamcrest/CustomTypeSafeMatcher;->fixedDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method
