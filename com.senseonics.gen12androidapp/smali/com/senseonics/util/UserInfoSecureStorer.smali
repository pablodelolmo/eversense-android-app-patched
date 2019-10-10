.class public Lcom/senseonics/util/UserInfoSecureStorer;
.super Ljava/lang/Object;
.source "UserInfoSecureStorer.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private securePrefs:Lcom/securepreferences/SecurePreferences;

.field private timeProvider:Lcom/senseonics/util/TimeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/util/TimeProvider;Lcom/securepreferences/SecurePreferences;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 39
    iput-object p3, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    return-void
.end method


# virtual methods
.method public clearAccessTokenTime()V
    .locals 3

    .line 69
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public clearUserData()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const-string v1, "AccountIsLoggedIn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    const-string v1, "AccountUserPassword"

    .line 96
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountRefreshToken"

    .line 97
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountAccessToken"

    .line 98
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public clearUserTokens()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    const-string v1, "AccountRefreshToken"

    .line 86
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountAccessToken"

    .line 87
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0, p1}, Lcom/securepreferences/SecurePreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getMemberList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 114
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/senseonics/util/UserInfoSecureStorer$1;

    invoke-direct {v2, p0}, Lcom/senseonics/util/UserInfoSecureStorer$1;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 117
    invoke-virtual {v2}, Lcom/senseonics/util/UserInfoSecureStorer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getSecureSettingsForLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/securepreferences/SecurePreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveMemberList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveProfileImage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AccountProfileImage"

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    .line 124
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/securepreferences/SecurePreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/securepreferences/SecurePreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUserInfo(Lcom/senseonics/authentication/SenseonicsTokenDto;Ljava/lang/String;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const-string v1, "AccountIsLoggedIn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "AccountUserName"

    .line 44
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccountRefreshToken"

    .line 45
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccountAccessToken"

    .line 46
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object p1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->timeProvider:Lcom/senseonics/util/TimeProvider;

    invoke-virtual {v0}, Lcom/senseonics/util/TimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "AccountUserPassword"

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveUserProfile(Lcom/senseonics/mycircle/model/UserProfileDto;)V
    .locals 2

    const-string v0, "AccountFirstName"

    .line 52
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccountLastName"

    .line 53
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getProfileImageBase64()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveProfileImage(Ljava/lang/String;)V

    const-string v0, "AccountUserID"

    .line 55
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getUserId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
