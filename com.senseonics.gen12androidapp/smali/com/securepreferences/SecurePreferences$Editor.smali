.class public Lcom/securepreferences/SecurePreferences$Editor;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/securepreferences/SecurePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/securepreferences/SecurePreferences;


# direct methods
.method private constructor <init>(Lcom/securepreferences/SecurePreferences;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->access$100(Lcom/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/securepreferences/SecurePreferences;Lcom/securepreferences/SecurePreferences$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lcom/securepreferences/SecurePreferences$Editor;-><init>(Lcom/securepreferences/SecurePreferences;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {v1, p2}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 545
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences$Editor;->this$0:Lcom/securepreferences/SecurePreferences;

    invoke-static {v2, v1}, Lcom/securepreferences/SecurePreferences;->access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_0
    iget-object p2, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putUnencryptedString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
