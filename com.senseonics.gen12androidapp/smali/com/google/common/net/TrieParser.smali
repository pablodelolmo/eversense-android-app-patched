.class Lcom/google/common/net/TrieParser;
.super Ljava/lang/Object;
.source "TrieParser.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final PREFIX_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 32
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableSet$Builder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x21

    const/16 v5, 0x3f

    if-ge v2, v0, :cond_1

    .line 71
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x26

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    :goto_1
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/net/TrieParser;->reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p0, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_3

    .line 82
    :cond_2
    sget-object v4, Lcom/google/common/net/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 84
    invoke-virtual {p2, v4}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-eq v3, v5, :cond_5

    :cond_4
    if-ge v2, v0, :cond_5

    .line 92
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/google/common/net/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableSet$Builder;)I

    move-result v3

    add-int/2addr v2, v3

    .line 93
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 100
    :cond_5
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v2
.end method

.method static parseTrie(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 40
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/common/net/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableSet$Builder;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private static reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 110
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 115
    :cond_0
    new-array v2, v0, [C

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x1

    .line 116
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v2, v3

    :goto_0
    if-ge v1, v0, :cond_2

    sub-int v3, v4, v1

    .line 119
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    .line 120
    aget-char v3, v2, v1

    add-int/lit8 v5, v1, -0x1

    aget-char v6, v2, v5

    invoke-static {v3, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-static {v2, v5, v1}, Lcom/google/common/net/TrieParser;->swap([CII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static swap([CII)V
    .locals 2

    .line 129
    aget-char v0, p0, p1

    .line 130
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 131
    aput-char v0, p0, p2

    return-void
.end method
