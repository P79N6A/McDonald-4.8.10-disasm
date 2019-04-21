.class public Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CustomerProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;,
        Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountDeleteType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

.field private mAccountItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountVerified:Z

.field private mActivationOption:I

.field private mAgeOfCustomerId:I

.field private mAgeOfOldestOrder:I

.field private mAgeRange:Ljava/lang/String;

.field private mBirthDate:Ljava/util/Calendar;

.field private mCardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerId:J

.field private mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

.field private mDayOfBirth:Ljava/lang/Integer;

.field private mDeactivateAccountTimeStamp:Ljava/lang/String;

.field private mEmailActivated:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mEthnicity:Ljava/lang/String;

.field private mFavoriteItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteStoreIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstName:Ljava/lang/String;

.field private mGender:Ljava/lang/String;

.field private mHasAcceptedPrivacyPolicy:Z

.field private mHasAcceptedTermsAndCondition:Z

.field private mIsActive:Z

.field private mLastName:Ljava/lang/String;

.field private mLoginPreference:I

.field private mMSAlarmEnabled:Z

.field private mMiddleName:Ljava/lang/String;

.field private mMobileNumber:Ljava/lang/String;

.field private mMonthOfBirth:Ljava/lang/Integer;

.field private mNewPassword:Ljava/lang/String;

.field private mNewUserName:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

.field private mNumberOfOrders:I

.field private mOptInForCommunicationChannel:Ljava/lang/Boolean;

.field private mOptInForContests:Ljava/lang/Boolean;

.field private mOptInForOtherMarketingMessages:Ljava/lang/Boolean;

.field private mOptInForProgramChanges:Ljava/lang/Boolean;

.field private mOptInForSurveys:Ljava/lang/Boolean;

.field private mOptIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/OptIn;",
            ">;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mPasswordChangeRequired:Z

.field private mPreferredCommunicationCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredLocale:Ljava/util/Locale;

.field private mPreferredNotification:Ljava/lang/Integer;

.field private mPreferredOfferCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacyPolicyAcceptanceDate:Ljava/lang/String;

.field private mPrivacyPolicyVersion:Ljava/lang/String;

.field private mReceivePromotions:Ljava/lang/Boolean;

.field private mRecentStoreIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldChangeBirthdate:Z

.field private mShouldUpdatePrivacyPolicy:Z

.field private mShouldUpdateTermsAndCondition:Z

.field private mSmsVerified:Z

.field private mSocialAccountLoginRegistered:Ljava/lang/Boolean;

.field private mSocialAuthenticationToken:Ljava/lang/String;

.field private mSocialProvider:Ljava/lang/String;

.field private mSocialServiceAuthenticationID:I

.field private mSocialUserID:Ljava/lang/String;

.field private mSubscribedToOffers:Z

.field private mTermsAndConditionAcceptanceDate:Ljava/lang/String;

.field private mTermsAndConditionVersion:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mUsingSocialLogin:Z

.field private mUsingSocialLoginWithoutEmail:Z

.field private mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

.field private mYearOfBirth:Ljava/lang/Integer;

.field private mZipCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 821
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptIns:Ljava/util/List;

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredLocale(Ljava/util/Locale;)V

    .line 136
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mIsActive:Z

    .line 137
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 760
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptIns:Ljava/util/List;

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerId:J

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUserName:Ljava/lang/String;

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewUserName:Ljava/lang/String;

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPassword:Ljava/lang/String;

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFirstName:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMiddleName:Ljava/lang/String;

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLastName:Ljava/lang/String;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNickName:Ljava/lang/String;

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mZipCode:Ljava/lang/String;

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialServiceAuthenticationID:I

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLogin:Z

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLoginWithoutEmail:Z

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMSAlarmEnabled:Z

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAuthenticationToken:Ljava/lang/String;

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialUserID:Ljava/lang/String;

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAccountLoginRegistered:Ljava/lang/Boolean;

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMobileNumber:Ljava/lang/String;

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailAddress:Ljava/lang/String;

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailActivated:Z

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mBirthDate:Ljava/util/Calendar;

    .line 781
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    .line 782
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    .line 783
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredLocale:Ljava/util/Locale;

    .line 785
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredNotification:Ljava/lang/Integer;

    .line 786
    const-class v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .line 787
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSubscribedToOffers:Z

    .line 788
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mReceivePromotions:Ljava/lang/Boolean;

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCardItems:Ljava/util/List;

    .line 791
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCardItems:Ljava/util/List;

    const-class v3, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 793
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountItems:Ljava/util/List;

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStoreIdList:Ljava/util/List;

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mRecentStoreIdList:Ljava/util/List;

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    .line 798
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 800
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredCommunicationCategories:Ljava/util/List;

    .line 801
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    .line 802
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForCommunicationChannel:Ljava/lang/Boolean;

    .line 803
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForSurveys:Ljava/lang/Boolean;

    .line 804
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForProgramChanges:Ljava/lang/Boolean;

    .line 805
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForContests:Ljava/lang/Boolean;

    .line 806
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForOtherMarketingMessages:Ljava/lang/Boolean;

    .line 807
    const-class v0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPasswordChangeRequired:Z

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLoginPreference:I

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfCustomerId:I

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfOldestOrder:I

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNumberOfOrders:I

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mActivationOption:I

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mGender:Ljava/lang/String;

    .line 816
    const-class v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .line 817
    const-class v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountDeleteType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mIsActive:Z

    .line 819
    return-void

    :cond_0
    move v0, v2

    .line 771
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 772
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 773
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 776
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 779
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 808
    goto :goto_5

    :cond_6
    move v1, v2

    .line 818
    goto :goto_6
.end method


# virtual methods
.method public addFavoriteOrderProductId(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)V
    .locals 1
    .param p1, "favoriteItem"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountDeleteType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountDeleteType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    return-object v0
.end method

.method public getAccountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountItems:Ljava/util/List;

    return-object v0
.end method

.method public getActivationOption()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mActivationOption:I

    return v0
.end method

.method public getAgeOfCustomerId()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfCustomerId:I

    return v0
.end method

.method public getAgeOfOldestOrder()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfOldestOrder:I

    return v0
.end method

.method public getAgeRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeRange:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mBirthDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCardItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCardItems:Ljava/util/List;

    return-object v0
.end method

.method public getCustomerAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getCustomerId()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerId:J

    return-wide v0
.end method

.method public getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    return-object v0
.end method

.method public getDayOfBirth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeactivateAccountTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDeactivateAccountTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEthnicity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEthnicity:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    goto :goto_0
.end method

.method public getFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .locals 6
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 479
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 480
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 481
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-ne v3, v4, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 483
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    .end local v0    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFavoriteStoreIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStoreIdList:Ljava/util/List;

    return-object v0
.end method

.method public getFavoriteStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStores:Ljava/util/List;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginPreference()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLoginPreference:I

    return v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthOfBirth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getNewUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    return-object v0
.end method

.method public getNumberOfOrders()I
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNumberOfOrders:I

    return v0
.end method

.method public getOptInForCommunicationChannel()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForCommunicationChannel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOptInForContests()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForContests:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOptInForOtherMarketingMessages()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForOtherMarketingMessages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOptInForProgramChanges()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForProgramChanges:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOptInForSurveys()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForSurveys:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOptIns()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/OptIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptIns:Ljava/util/List;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredCommunicationCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredCommunicationCategories:Ljava/util/List;

    return-object v0
.end method

.method public getPreferredLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPreferredNotification()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredNotification:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreferredOfferCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    return-object v0
.end method

.method public getPrivacyPolicyAcceptanceDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPrivacyPolicyAcceptanceDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivePromotions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mReceivePromotions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRecentStoreIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mRecentStoreIdList:Ljava/util/List;

    return-object v0
.end method

.method public getSocialAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAuthenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialServiceAuthenticationID()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialServiceAuthenticationID:I

    return v0
.end method

.method public getSocialUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribedToOffers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSubscribedToOffers:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTermsAndConditionAcceptanceDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mTermsAndConditionAcceptanceDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationType()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    return-object v0
.end method

.method public getYearOfBirth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mZipCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPrivacyPolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmTermsAndConditionVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mTermsAndConditionVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAcceptedPrivacyPolicy()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mHasAcceptedPrivacyPolicy:Z

    return v0
.end method

.method public hasAcceptedTermsAndCondition()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mHasAcceptedTermsAndCondition:Z

    return v0
.end method

.method public isAccountVerified()Z
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$2;->$SwitchMap$com$mcdonalds$sdk$modules$customer$CustomerProfile$AccountVerificationType:[I

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 524
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 519
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isDefaultPhoneNumberVerified()Z

    move-result v0

    goto :goto_0

    .line 521
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressVerified()Z

    move-result v0

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mIsActive:Z

    return v0
.end method

.method public isEmailActivated()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailActivated:Z

    return v0
.end method

.method public isEmailTakeOver()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressTakenOver()Z

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailVerified()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailActivated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;)Z
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "favoriteProductType"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .prologue
    .line 461
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 462
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 463
    .local v1, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 466
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    const/4 v2, 0x1

    .line 474
    .end local v0    # "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v1    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMobileTakeOver()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isDefaultPhoneNumberTakenOver()Z

    move-result v0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileVerified()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isDefaultPhoneNumberVerified()Z

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordChangeRequired()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPasswordChangeRequired:Z

    return v0
.end method

.method public isReceivePromotions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mReceivePromotions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSmsVerified()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSmsVerified:Z

    return v0
.end method

.method public isSocialAccountLoginRegistered()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAccountLoginRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSubscribedToOffers()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSubscribedToOffers:Z

    return v0
.end method

.method public isUsingSocialLogin()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLogin:Z

    return v0
.end method

.method public isUsingSocialLoginWithoutEmail()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLoginWithoutEmail:Z

    return v0
.end method

.method public ismMSAlarmEnabled()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMSAlarmEnabled:Z

    return v0
.end method

.method public needsFavoriteItemsRefresh()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccountDeleteType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;)V
    .locals 0
    .param p1, "mAccountDeleteType"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountDeleteType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    .line 909
    return-void
.end method

.method public setAccountItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "accountItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountItems:Ljava/util/List;

    .line 371
    return-void
.end method

.method public setActivationOption(I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    .line 693
    iput p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mActivationOption:I

    .line 694
    return-void
.end method

.method public setAgeOfCustomerId(I)V
    .locals 0
    .param p1, "ageOfCustomerId"    # I

    .prologue
    .line 949
    iput p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfCustomerId:I

    .line 950
    return-void
.end method

.method public setAgeOfOldestOrder(I)V
    .locals 0
    .param p1, "ageOfOldestOrder"    # I

    .prologue
    .line 957
    iput p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfOldestOrder:I

    .line 958
    return-void
.end method

.method public setAgeRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "ageRange"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeRange:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setBirthDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "birthDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    .line 224
    if-eqz p1, :cond_0

    .line 225
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mBirthDate:Ljava/util/Calendar;

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    .line 227
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    .line 228
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mBirthDate:Ljava/util/Calendar;

    .line 231
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    .line 232
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    .line 233
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setCardItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCardItems:Ljava/util/List;

    .line 363
    return-void
.end method

.method public setCustomerAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerAddresses:Ljava/util/List;

    .line 355
    return-void
.end method

.method public setCustomerId(J)V
    .locals 1
    .param p1, "customerId"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerId:J

    .line 145
    return-void
.end method

.method public setCustomerLoginInfo(Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    .line 635
    return-void
.end method

.method public setDayOfBirth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mDayOfBirth"    # Ljava/lang/Integer;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    .line 259
    return-void
.end method

.method public setDeactivateAccountTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeactivateAccountTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDeactivateAccountTimeStamp:Ljava/lang/String;

    .line 901
    return-void
.end method

.method public setEmailActivated(Z)V
    .locals 0
    .param p1, "emailActivated"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailActivated:Z

    .line 514
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailAddress:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 0
    .param p1, "ethnicity"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEthnicity:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setFavoriteItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    .line 453
    return-void
.end method

.method public setFavoriteStoreIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "favoriteStoreIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStoreIdList:Ljava/util/List;

    .line 379
    return-void
.end method

.method public setFavoriteStores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStores:Ljava/util/List;

    .line 499
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFirstName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGender"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mGender:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setHasAcceptedPrivacyPolicy(Z)V
    .locals 0
    .param p1, "hasAcceptedPrivacyPolicy"    # Z

    .prologue
    .line 860
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mHasAcceptedPrivacyPolicy:Z

    .line 861
    return-void
.end method

.method public setHasAcceptedTermsAndCondition(Z)V
    .locals 0
    .param p1, "hasAcceptedTermsAndCondition"    # Z

    .prologue
    .line 852
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mHasAcceptedTermsAndCondition:Z

    .line 853
    return-void
.end method

.method public setIsActive(Z)V
    .locals 0
    .param p1, "mIsActive"    # Z

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mIsActive:Z

    .line 925
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLastName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setLoginPreference(I)V
    .locals 0
    .param p1, "preference"    # I

    .prologue
    .line 642
    iput p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLoginPreference:I

    .line 643
    return-void
.end method

.method public setMSAlarmEnabled(Z)V
    .locals 0
    .param p1, "MSAAlarmEnable"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMSAlarmEnabled:Z

    .line 603
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "middleName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMiddleName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMobileNumber:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setMonthOfBirth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mMonthOfBirth"    # Ljava/lang/Integer;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    .line 251
    return-void
.end method

.method public setNewPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNewPassword"    # Ljava/lang/String;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewPassword:Ljava/lang/String;

    .line 893
    return-void
.end method

.method public setNewUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNewUserName"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewUserName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNickName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)V
    .locals 0
    .param p1, "mNotificationPreferences"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .line 438
    return-void
.end method

.method public setNumberOfOrders(I)V
    .locals 0
    .param p1, "numberOfOrders"    # I

    .prologue
    .line 965
    iput p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNumberOfOrders:I

    .line 966
    return-void
.end method

.method public setOptInForCommunicationChannel(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "optInForCommunicationChannel"    # Ljava/lang/Boolean;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForCommunicationChannel:Ljava/lang/Boolean;

    .line 573
    return-void
.end method

.method public setOptInForContests(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "optInForContests"    # Ljava/lang/Boolean;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForContests:Ljava/lang/Boolean;

    .line 549
    return-void
.end method

.method public setOptInForOtherMarketingMessages(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "optInForOtherMarketingMessages"    # Ljava/lang/Boolean;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForOtherMarketingMessages:Ljava/lang/Boolean;

    .line 541
    return-void
.end method

.method public setOptInForProgramChanges(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "optInForProgramChanges"    # Ljava/lang/Boolean;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForProgramChanges:Ljava/lang/Boolean;

    .line 557
    return-void
.end method

.method public setOptInForSurveys(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "optInForSurveys"    # Ljava/lang/Boolean;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForSurveys:Ljava/lang/Boolean;

    .line 565
    return-void
.end method

.method public setOptIns(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/OptIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, "optIns":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/customer/OptIn;>;"
    if-nez p1, :cond_0

    .line 975
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "optIns":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/customer/OptIn;>;"
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 977
    .restart local p1    # "optIns":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/customer/OptIn;>;"
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptIns:Ljava/util/List;

    .line 978
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPassword:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPasswordChangeRequired(Z)V
    .locals 0
    .param p1, "passwordChangeRequired"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPasswordChangeRequired:Z

    .line 403
    return-void
.end method

.method public setPreferredCommunicationCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "mPreferredCommunicationCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CommunicationCategory;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredCommunicationCategories:Ljava/util/List;

    .line 424
    return-void
.end method

.method public setPreferredLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "preferredLocale"    # Ljava/util/Locale;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredLocale:Ljava/util/Locale;

    .line 267
    return-void
.end method

.method public setPreferredNotification(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "preferredNotification"    # Ljava/lang/Integer;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredNotification:Ljava/lang/Integer;

    .line 275
    return-void
.end method

.method public setPreferredOfferCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    .line 416
    return-void
.end method

.method public setPrivacyPolicyAcceptanceDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyPolicyAcceptanceDate"    # Ljava/lang/String;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPrivacyPolicyAcceptanceDate:Ljava/lang/String;

    .line 941
    return-void
.end method

.method public setReceivePromotions(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "receivePromotions"    # Ljava/lang/Boolean;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mReceivePromotions:Ljava/lang/Boolean;

    .line 347
    return-void
.end method

.method public setRecentStoreIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "recentStoreIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mRecentStoreIdList:Ljava/util/List;

    .line 387
    return-void
.end method

.method public setShouldChangeBirthdate(Z)V
    .locals 0
    .param p1, "mShouldChangeBirthdate"    # Z

    .prologue
    .line 916
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mShouldChangeBirthdate:Z

    .line 917
    return-void
.end method

.method public setShouldUpdatePrivacyPolicy(Z)V
    .locals 0
    .param p1, "mShouldUpdatePrivacyPolicy"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mShouldUpdatePrivacyPolicy:Z

    .line 877
    return-void
.end method

.method public setShouldUpdateTermsAndCondition(Z)V
    .locals 0
    .param p1, "mShouldUpdateTermsAndCondition"    # Z

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mShouldUpdateTermsAndCondition:Z

    .line 869
    return-void
.end method

.method public setSmsVerified(Z)V
    .locals 0
    .param p1, "mSmsVerified"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSmsVerified:Z

    .line 533
    return-void
.end method

.method public setSocialAccountLoginRegistered(Z)V
    .locals 1
    .param p1, "socialAccountLoginRegistered"    # Z

    .prologue
    .line 506
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAccountLoginRegistered:Ljava/lang/Boolean;

    .line 507
    return-void
.end method

.method public setSocialAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialAuthenticationToken"    # Ljava/lang/String;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAuthenticationToken:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setSocialProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialProvider"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialProvider:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSocialServiceAuthenticationID(I)V
    .locals 0
    .param p1, "socialServiceAuthenticationID"    # I

    .prologue
    .line 580
    iput p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialServiceAuthenticationID:I

    .line 581
    return-void
.end method

.method public setSocialUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialUserID"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialUserID:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public setSubscribedToOffers(Z)V
    .locals 0
    .param p1, "subscribedToOffers"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSubscribedToOffers:Z

    .line 339
    return-void
.end method

.method public setTermsAndConditionAcceptanceDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "termsAndConditionAcceptanceDate"    # Ljava/lang/String;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mTermsAndConditionAcceptanceDate:Ljava/lang/String;

    .line 933
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUserName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setUsingSocialLogin(Z)V
    .locals 0
    .param p1, "usingSocialLogin"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLogin:Z

    .line 589
    return-void
.end method

.method public setUsingSocialLoginWithoutEmail(Z)V
    .locals 0
    .param p1, "usingSocialLoginWithoutEmail"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLoginWithoutEmail:Z

    .line 597
    return-void
.end method

.method public setVerificationType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;)V
    .locals 0
    .param p1, "mVerificationType"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .line 885
    return-void
.end method

.method public setYearOfBirth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mYearOfBirth"    # Ljava/lang/Integer;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    .line 243
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mZipCode"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mZipCode:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setmPrivacyPolicyVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrivacyPolicyVersion"    # Ljava/lang/String;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPrivacyPolicyVersion:Ljava/lang/String;

    .line 845
    return-void
.end method

.method public setmTermsAndConditionVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTermsAndConditionVersion"    # Ljava/lang/String;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mTermsAndConditionVersion:Ljava/lang/String;

    .line 837
    return-void
.end method

.method public shouldChangeBirthdate()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mShouldChangeBirthdate:Z

    return v0
.end method

.method public shouldUpdatePrivacyPolicy()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mShouldUpdatePrivacyPolicy:Z

    return v0
.end method

.method public shouldUpdateTermsAndCondition()Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mShouldUpdateTermsAndCondition:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomerProfile{mCustomerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mNewUserName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mPassword=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mFirstName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mMiddleName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMiddleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mLastName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mNickName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mZipCode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mZipCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mMobileNumber=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mEmailAddress=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mEmailActivated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBirthDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mBirthDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYearOfBirth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonthOfBirth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayOfBirth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferredLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferredNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredNotification:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubscribedToOffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSubscribedToOffers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReceivePromotions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mReceivePromotions:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCardItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCardItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccountItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFavoriteStoreIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStoreIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecentStoreIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mRecentStoreIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferredOfferCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferredCommunicationCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredCommunicationCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFavoriteItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOptInForCommunicationChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForCommunicationChannel:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOptInForSurveys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForSurveys:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOptInForProgramChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForProgramChanges:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOptInForContests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForContests:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOptInForOtherMarketingMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForOtherMarketingMessages:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPasswordChangeRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPasswordChangeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAgeOfCustomerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfCustomerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAgeOfOldestOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfOldestOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumberOfOrders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNumberOfOrders:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 705
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNewUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMiddleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mZipCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialServiceAuthenticationID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLogin:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 715
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mUsingSocialLoginWithoutEmail:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 716
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMSAlarmEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 717
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAuthenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialUserID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAccountLoginRegistered:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 720
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAccountLoginRegistered:Ljava/lang/Boolean;

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSocialAccountLoginRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 723
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mEmailActivated:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 726
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mBirthDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 727
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mYearOfBirth:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mMonthOfBirth:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mDayOfBirth:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 731
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredNotification:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 732
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNotificationPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 733
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mSubscribedToOffers:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mReceivePromotions:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCardItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 736
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 737
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteStoreIdList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 738
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mRecentStoreIdList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 739
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredOfferCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 740
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPreferredCommunicationCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 741
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mFavoriteItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 742
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForCommunicationChannel:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForSurveys:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForProgramChanges:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForContests:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mOptInForOtherMarketingMessages:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mCustomerLoginInfo:Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 748
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mPasswordChangeRequired:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 749
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mLoginPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfCustomerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAgeOfOldestOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mNumberOfOrders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mActivationOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mGender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mVerificationType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mAccountDeleteType:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountDeleteType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 757
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->mIsActive:Z

    if-eqz v0, :cond_7

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 758
    return-void

    :cond_1
    move v0, v2

    .line 714
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 715
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 716
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 722
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 725
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 748
    goto :goto_5

    :cond_7
    move v1, v2

    .line 757
    goto :goto_6
.end method
