.class final Lcom/google/common/base/Joiner$3;
.super Ljava/util/AbstractList;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$first:Ljava/lang/Object;

.field final synthetic val$rest:[Ljava/lang/Object;

.field final synthetic val$second:Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/base/Joiner$3;->val$first:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/base/Joiner$3;->val$second:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 455
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x2

    aget-object p1, v0, p1

    return-object p1

    .line 453
    :pswitch_0
    iget-object p1, p0, Lcom/google/common/base/Joiner$3;->val$second:Ljava/lang/Object;

    return-object p1

    .line 451
    :pswitch_1
    iget-object p1, p0, Lcom/google/common/base/Joiner$3;->val$first:Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
