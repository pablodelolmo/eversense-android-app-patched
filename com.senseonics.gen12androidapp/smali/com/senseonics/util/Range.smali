.class public Lcom/senseonics/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private from:I

.field private to:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/senseonics/util/Range;->from:I

    .line 9
    iput p2, p0, Lcom/senseonics/util/Range;->to:I

    return-void
.end method


# virtual methods
.method public compareTo(I)I
    .locals 1

    .line 30
    iget v0, p0, Lcom/senseonics/util/Range;->to:I

    if-le p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 33
    :cond_0
    iget v0, p0, Lcom/senseonics/util/Range;->from:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 21
    iget v0, p0, Lcom/senseonics/util/Range;->to:I

    iget v1, p0, Lcom/senseonics/util/Range;->from:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFrom()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/senseonics/util/Range;->from:I

    return v0
.end method

.method public getTo()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/senseonics/util/Range;->to:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/util/Range;->from:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/util/Range;->to:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
