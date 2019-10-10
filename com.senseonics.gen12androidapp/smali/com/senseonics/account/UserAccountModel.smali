.class public Lcom/senseonics/account/UserAccountModel;
.super Ljava/lang/Object;
.source "UserAccountModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private memberName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private profileImage:Ljava/lang/String;

.field private secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 25
    iput-object p2, p0, Lcom/senseonics/account/UserAccountModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    .line 27
    invoke-virtual {p0}, Lcom/senseonics/account/UserAccountModel;->isAccountLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->username:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->getAccountPasswordFromPreference()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->password:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->getAccountProfileImageFromPreference()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->profileImage:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->getAccountFirstNameFromPreference()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 32
    invoke-virtual {p2}, Lcom/senseonics/util/AccountConstants;->getAccountLastNameFromPreference()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/account/UserAccountModel;->setMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p3, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 62
    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAccountAccessTokenFromPreference()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountAccessTokenFromPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountAccessTokenTimeFromPreference()J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountAccessTokenTimeFromPreference()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAccountRefreshTokenFromPreference()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountRefreshTokenFromPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserDisplayName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getCoveredUsernameIfExists()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->profileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->username:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/senseonics/account/UserAccountModel;->getCurrentUserDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->username:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/senseonics/account/UserAccountModel;->password:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/senseonics/account/UserAccountModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {p1}, Lcom/senseonics/util/UserInfoSecureStorer;->clearUserTokens()V

    return-void
.end method

.method public isAccountLoggedIn()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->isAccountLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public logout()V
    .locals 1

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/senseonics/account/UserAccountModel;->memberName:Ljava/lang/String;

    iput-object v0, p0, Lcom/senseonics/account/UserAccountModel;->profileImage:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0}, Lcom/senseonics/util/UserInfoSecureStorer;->clearUserData()V

    return-void
.end method

.method public saveUserInfo(Lcom/senseonics/authentication/SenseonicsTokenDto;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/senseonics/account/UserAccountModel;->logout()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v1, p0, Lcom/senseonics/account/UserAccountModel;->password:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveUserInfo(Lcom/senseonics/authentication/SenseonicsTokenDto;Ljava/lang/String;)V

    return-void
.end method

.method public saveUserProfile(Lcom/senseonics/mycircle/model/UserProfileDto;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveUserProfile(Lcom/senseonics/mycircle/model/UserProfileDto;)V

    .line 54
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getProfileImageBase64()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/UserAccountModel;->profileImage:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/senseonics/account/UserAccountModel;->setMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProfileImage(Ljava/lang/String;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/senseonics/account/UserAccountModel;->profileImage:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/senseonics/account/UserAccountModel;->secureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveProfileImage(Ljava/lang/String;)V

    return-void
.end method
