.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDnsDomainInfo"
.end annotation


# instance fields
.field public dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

.field public dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

.field public domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 258
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 259
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 260
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v1}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 263
    :cond_0
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 264
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 265
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 266
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 267
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v2, :cond_1

    .line 268
    new-instance v2, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v2}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 270
    :cond_1
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 271
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 272
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 273
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 274
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v3, :cond_2

    .line 275
    new-instance v3, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v3}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 277
    :cond_2
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 278
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 279
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 280
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 281
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Ljcifs/dcerpc/rpc$uuid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 284
    :cond_3
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 285
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 286
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 287
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 288
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 290
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v4, 0x6

    .line 291
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 292
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    const v6, 0xffff

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    .line 295
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 296
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 297
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 298
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    .line 299
    iget v9, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v10, v8, 0x2

    .line 300
    invoke-virtual {p1, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 302
    iget-object v10, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v10, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v10, :cond_6

    if-ltz v1, :cond_5

    if-le v1, v6, :cond_4

    goto :goto_0

    .line 304
    :cond_4
    iget-object v10, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    new-array v1, v1, [S

    iput-object v1, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_1

    .line 303
    :cond_5
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_6
    :goto_1
    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_7

    .line 308
    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v9, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_b

    .line 312
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 313
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 314
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 315
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 316
    iget v8, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v9, v2, 0x2

    .line 317
    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 319
    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v9, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v9, :cond_a

    if-ltz v1, :cond_9

    if-le v1, v6, :cond_8

    goto :goto_3

    .line 321
    :cond_8
    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    new-array v1, v1, [S

    iput-object v1, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_4

    .line 320
    :cond_9
    :goto_3
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_a
    :goto_4
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_b

    .line 325
    iget-object v8, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v8, v8, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    if-eqz v3, :cond_f

    .line 329
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 330
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 331
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 332
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 333
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v8, v2, 0x2

    .line 334
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 336
    iget-object v8, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v8, v8, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v8, :cond_e

    if-ltz v1, :cond_d

    if-le v1, v6, :cond_c

    goto :goto_6

    .line 338
    :cond_c
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    new-array v1, v1, [S

    iput-object v1, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_7

    .line 337
    :cond_d
    :goto_6
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_e
    :goto_7
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_f

    .line 342
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v3, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 345
    :cond_f
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v1, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v1, :cond_10

    .line 347
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    new-array v2, v4, [B

    iput-object v2, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 349
    :cond_10
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    :goto_9
    if-ge v7, v4, :cond_11

    .line 351
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_11
    if-eqz v5, :cond_13

    .line 354
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-nez v0, :cond_12

    .line 355
    new-instance v0, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 357
    :cond_12
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 358
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_13
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 182
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 183
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 184
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 185
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 186
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 187
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 188
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 189
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 190
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 191
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 192
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 193
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 194
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 195
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 196
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 198
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v2, 0x6

    .line 199
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 200
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {p1, v3, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 202
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 203
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 204
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v1, v1, 0x2

    .line 205
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v4, v4, 0x2

    .line 206
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 207
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 208
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 209
    iget v4, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v5, v1, 0x2

    .line 210
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 212
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 214
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v5, v5, v4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v1, :cond_1

    .line 218
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 219
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v1, v1, 0x2

    .line 220
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v4, v4, 0x2

    .line 221
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 222
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 223
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 224
    iget v4, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v5, v1, 0x2

    .line 225
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 227
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 229
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v5, v5, v4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    :cond_1
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v1, :cond_2

    .line 233
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 234
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v1, v1, 0x2

    .line 235
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v4, v4, 0x2

    .line 236
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 237
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 238
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 239
    iget v4, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v5, v1, 0x2

    .line 240
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 242
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    .line 244
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v5, v5, v4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 247
    :cond_2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    :goto_3
    if-ge v3, v2, :cond_3

    .line 249
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v0, v0, v3

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 251
    :cond_3
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-eqz v0, :cond_4

    .line 252
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 253
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_4
    return-void
.end method
