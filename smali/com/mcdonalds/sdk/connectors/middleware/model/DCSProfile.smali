.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
.super Ljava/lang/Object;
.source "DCSProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileAudit;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;
    }
.end annotation


# static fields
.field private static final EMAIL_STATUS_ACTIVE:Ljava/lang/String; = "Y"

.field public static final INDICATOR_FALSE:Ljava/lang/String; = "N"

.field public static final INDICATOR_TRUE:Ljava/lang/String; = "Y"

.field public static final KEY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "modules.customer.register.notificationPreferences"

.field public static final KEY_REQUIRES_ACTIVATION:Ljava/lang/String; = "requireActivation"

.field private static final STATUS_ACTIVE:Ljava/lang/String; = "A"


# instance fields
.field public audit:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileAudit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audit"
    .end annotation
.end field

.field public base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "base"
    .end annotation
.end field

.field public extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extended"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static booleanForIndicator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 581
    if-eqz p0, :cond_0

    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dcsPreferenceOrNullIfEquals(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .locals 1
    .param p0, "oldPreference"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .param p1, "newPreference"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    .prologue
    .line 558
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    .end local p1    # "newPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "newPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static dcsSubscriptionOrNullIfEquals(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    .locals 1
    .param p0, "oldSubscription"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    .param p1, "newSubscription"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    .prologue
    .line 566
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    .end local p1    # "newSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "newSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static difference(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .locals 40
    .param p0, "original"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 368
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 370
    .local v7, "dcsProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;-><init>()V

    .line 373
    .local v2, "base":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;
    if-nez p0, :cond_0

    .line 374
    new-instance p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .end local p0    # "original":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 377
    .restart local p0    # "original":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    if-nez v36, :cond_1

    .line 378
    new-instance v36, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    invoke-direct/range {v36 .. v36}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->username:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->username:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->firstName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->firstName:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->middleName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->middleName:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->lastName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->lastName:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->shortName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->shortName:Ljava/lang/String;

    .line 386
    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->username:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_2

    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->firstName:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_2

    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->middleName:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_2

    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->lastName:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_2

    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->shortName:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4

    :cond_2
    const/4 v14, 0x1

    .line 388
    .local v14, "hasBase":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerAddresses()Ljava/util/List;

    move-result-object v4

    .line 389
    .local v4, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v15, "newDCSAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_3

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->fromZipCode(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_3
    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 394
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_1
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_5

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 395
    .local v3, "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    .end local v3    # "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .end local v4    # "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .end local v14    # "hasBase":Z
    .end local v15    # "newDCSAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;>;"
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 398
    .restart local v4    # "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .restart local v14    # "hasBase":Z
    .restart local v15    # "newDCSAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;>;"
    :cond_5
    invoke-static {v15}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 399
    iput-object v15, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    .line 400
    const/4 v14, 0x1

    .line 403
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_9

    .line 404
    const/16 v26, 0x0

    .line 405
    .local v26, "originalEmail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->emails:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_7

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->emails:Ljava/util/List;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->emailAddress:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 408
    :cond_7
    new-instance v18, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;

    invoke-direct/range {v18 .. v18}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;-><init>()V

    .line 409
    .local v18, "newEmail":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->emailAddress:Ljava/lang/String;

    .line 410
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->emailAddress:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_9

    .line 411
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v36

    const-string v37, "requireActivation"

    .line 412
    invoke-virtual/range {v36 .. v37}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v35

    .line 414
    .local v35, "requiresActivation":Z
    if-eqz v35, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v36

    if-eqz v36, :cond_18

    :cond_8
    const/16 v36, 0x1

    :goto_2
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->activeInd:Ljava/lang/String;

    .line 415
    const-string v36, "Y"

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->primaryInd:Ljava/lang/String;

    .line 416
    const-string v36, "personal"

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->type:Ljava/lang/String;

    .line 417
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->emails:Ljava/util/List;

    .line 418
    const/4 v14, 0x1

    .line 422
    .end local v18    # "newEmail":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    .end local v26    # "originalEmail":Ljava/lang/String;
    .end local v35    # "requiresActivation":Z
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v34

    .line 423
    .local v34, "phoneNumber":Ljava/lang/String;
    if-eqz v34, :cond_b

    .line 424
    const/16 v28, 0x0

    .line 425
    .local v28, "originalPhone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->phones:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_a

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->phones:Ljava/util/List;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->number:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 428
    :cond_a
    new-instance v33, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;

    invoke-direct/range {v33 .. v33}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;-><init>()V

    .line 429
    .local v33, "phone":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->number:Ljava/lang/String;

    .line 430
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->number:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_b

    .line 431
    const-string v36, "cell"

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->type:Ljava/lang/String;

    .line 432
    invoke-static/range {v33 .. v33}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->phones:Ljava/util/List;

    .line 433
    const/4 v14, 0x1

    .line 437
    .end local v28    # "originalPhone":Ljava/lang/String;
    .end local v33    # "phone":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
    :cond_b
    if-eqz v14, :cond_c

    .line 438
    iput-object v2, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    .line 441
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v27, v0

    .line 442
    .local v27, "originalExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    new-instance v19, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct/range {v19 .. v19}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    .line 444
    .local v19, "newExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    if-nez v27, :cond_d

    .line 445
    new-instance v27, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .end local v27    # "originalExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    invoke-direct/range {v27 .. v27}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    .line 448
    .restart local v27    # "originalExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    :cond_d
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->fromDeviceInfo()Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;

    move-result-object v8

    .line 449
    .local v8, "device":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_19

    .line 450
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    .line 451
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v13

    .line 458
    .local v13, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    invoke-static {v13}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_f

    .line 459
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 460
    .local v6, "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v17, "newDCSFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    invoke-static {v13}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->fromFavoriteItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 462
    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_e

    .line 463
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 465
    :cond_e
    invoke-static/range {v17 .. v17}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_f

    .line 466
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 469
    .end local v6    # "dcsFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    .end local v17    # "newDCSFavorites":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_10

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEthnicity()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_10

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAgeRange()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_10

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v36

    if-eqz v36, :cond_14

    .line 473
    :cond_10
    new-instance v16, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    invoke-direct/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;-><init>()V

    .line 474
    .local v16, "newDCSDemographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v25, v0

    .line 475
    .local v25, "originalDemographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    if-nez v25, :cond_11

    .line 476
    new-instance v25, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    .end local v25    # "originalDemographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    invoke-direct/range {v25 .. v25}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;-><init>()V

    .line 478
    .restart local v25    # "originalDemographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->gender:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->gender:Ljava/lang/String;

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEthnicity()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ethnicity:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ethnicity:Ljava/lang/String;

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAgeRange()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ageRange:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ageRange:Ljava/lang/String;

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v36

    if-eqz v36, :cond_13

    .line 482
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;-><init>()V

    .line 483
    .local v5, "dcsDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v24, v0

    .line 484
    .local v24, "originalDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    if-nez v24, :cond_12

    .line 485
    new-instance v24, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    .end local v24    # "originalDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    invoke-direct/range {v24 .. v24}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;-><init>()V

    .line 487
    .restart local v24    # "originalDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v36

    const/16 v37, 0x5

    invoke-virtual/range {v36 .. v37}, Ljava/util/Calendar;->get(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v36

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Ljava/util/Calendar;->get(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthMonth:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthMonth:Ljava/lang/String;

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/Calendar;->get(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthYear:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthYear:Ljava/lang/String;

    .line 490
    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    .line 492
    .end local v5    # "dcsDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    .end local v24    # "originalDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    :cond_13
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    .line 495
    .end local v16    # "newDCSDemographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    .end local v25    # "originalDemographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createPreferenceList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/util/List;

    move-result-object v21

    .line 497
    .local v21, "newPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v10, "differencePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v30, "originalPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->preferences:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_15

    .line 500
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->preferences:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    :cond_15
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_16
    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    .line 505
    .local v20, "newPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_17
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_16

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    .line 506
    .local v29, "originalPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 507
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->dcsPreferenceOrNullIfEquals(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    move-result-object v9

    .line 508
    .local v9, "differencePreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    if-eqz v9, :cond_16

    .line 509
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 414
    .end local v8    # "device":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
    .end local v9    # "differencePreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v10    # "differencePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .end local v13    # "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .end local v19    # "newExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    .end local v20    # "newPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v21    # "newPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .end local v27    # "originalExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    .end local v29    # "originalPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v30    # "originalPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .end local v34    # "phoneNumber":Ljava/lang/String;
    .restart local v18    # "newEmail":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    .restart local v26    # "originalEmail":Ljava/lang/String;
    .restart local v35    # "requiresActivation":Z
    :cond_18
    const/16 v36, 0x0

    goto/16 :goto_2

    .line 454
    .end local v18    # "newEmail":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    .end local v26    # "originalEmail":Ljava/lang/String;
    .end local v35    # "requiresActivation":Z
    .restart local v8    # "device":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;
    .restart local v19    # "newExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    .restart local v27    # "originalExtended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    .restart local v34    # "phoneNumber":Ljava/lang/String;
    :cond_19
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->fromDeviceInfo()Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    goto/16 :goto_3

    .line 515
    .restart local v10    # "differencePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .restart local v13    # "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .restart local v21    # "newPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .restart local v30    # "originalPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    :cond_1a
    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_1b

    .line 516
    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->preferences:Ljava/util/List;

    .line 519
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->createSubscriptionList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/util/List;

    move-result-object v23

    .line 521
    .local v23, "newSubscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v12, "differenceSubscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v32, "originalSubscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->subscriptions:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_1c

    .line 524
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->subscriptions:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    :cond_1c
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_1d
    :goto_5
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1f

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    .line 529
    .local v22, "newSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1e
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1d

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    .line 530
    .local v31, "originalSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 531
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->dcsSubscriptionOrNullIfEquals(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    move-result-object v11

    .line 532
    .local v11, "differenceSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    if-eqz v11, :cond_1d

    .line 533
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 539
    .end local v11    # "differenceSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    .end local v22    # "newSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    .end local v31    # "originalSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_1f
    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_20

    .line 540
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->subscriptions:Ljava/util/List;

    .line 543
    :cond_20
    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 546
    return-object v7
.end method

.method public static fromCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .locals 23
    .param p0, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 39
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 41
    .local v7, "dcsProfile":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;-><init>()V

    .line 42
    .local v2, "base":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->username:Ljava/lang/String;

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->firstName:Ljava/lang/String;

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->middleName:Ljava/lang/String;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->lastName:Ljava/lang/String;

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNickName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->shortName:Ljava/lang/String;

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isActive()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->activeInd:Ljava/lang/String;

    .line 49
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 52
    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->fromZipCode(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerAddresses()Ljava/util/List;

    move-result-object v4

    .line 56
    .local v4, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 57
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 58
    .local v3, "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v3    # "customerAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_1
    new-instance v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;-><init>()V

    .line 63
    .local v10, "email":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->emailAddress:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v20

    const-string v21, "requireActivation"

    .line 65
    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v18

    .line 67
    .local v18, "requiresActivation":Z
    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_2
    const/16 v20, 0x1

    :goto_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->activeInd:Ljava/lang/String;

    .line 68
    const-string v20, "Y"

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->primaryInd:Ljava/lang/String;

    .line 69
    const-string v20, "personal"

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->type:Ljava/lang/String;

    .line 70
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->emails:Ljava/util/List;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, "phoneNumber":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 74
    new-instance v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;-><init>()V

    .line 75
    .local v14, "phone":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
    const-string v20, "cell"

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->type:Ljava/lang/String;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->number:Ljava/lang/String;

    .line 77
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->phones:Ljava/util/List;

    .line 80
    .end local v14    # "phone":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
    :cond_3
    iput-object v2, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    .line 82
    new-instance v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {v11}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    .line 83
    .local v11, "extended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;->fromDeviceInfo()Lcom/mcdonalds/sdk/connectors/middleware/model/DCSDevice;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->devices:Ljava/util/List;

    .line 85
    new-instance v16, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    invoke-direct/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;-><init>()V

    .line 86
    .local v16, "policies":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->acceptancePolicies:Ljava/util/List;

    .line 87
    const/4 v13, 0x0

    .line 89
    .local v13, "hasPolicies":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->hasAcceptedTermsAndCondition()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 90
    new-instance v19, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;

    invoke-direct/range {v19 .. v19}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;-><init>()V

    .line 91
    .local v19, "termsAndConditions":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    const-string v20, "GMA"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->sourceId:Ljava/lang/String;

    .line 92
    const-string v20, "TermsOfUseAcceptanceType"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->name:Ljava/lang/String;

    .line 93
    const-string v20, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->type:Ljava/lang/String;

    .line 94
    const-string v20, "Y"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->acceptanceInd:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->version:Ljava/lang/String;

    .line 96
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->acceptancePolicies:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v13, 0x1

    .line 100
    .end local v19    # "termsAndConditions":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->hasAcceptedPrivacyPolicy()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 101
    new-instance v17, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;

    invoke-direct/range {v17 .. v17}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;-><init>()V

    .line 102
    .local v17, "privacyPolicy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    const-string v20, "GMA"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->sourceId:Ljava/lang/String;

    .line 103
    const-string v20, "PrivacyPolicyAcceptanceType"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->name:Ljava/lang/String;

    .line 104
    const-string v20, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->type:Ljava/lang/String;

    .line 105
    const-string v20, "Y"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->acceptanceInd:Ljava/lang/String;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->version:Ljava/lang/String;

    .line 107
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->acceptancePolicies:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v13, 0x1

    .line 111
    .end local v17    # "privacyPolicy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    :cond_5
    if-eqz v13, :cond_6

    .line 112
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    .line 115
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v12

    .line 116
    .local v12, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 117
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    .line 118
    iget-object v0, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v12}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->fromFavoriteItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEthnicity()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAgeRange()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 126
    new-instance v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    invoke-direct {v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;-><init>()V

    .line 127
    .local v9, "demographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->gender:Ljava/lang/String;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEthnicity()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ethnicity:Ljava/lang/String;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getAgeRange()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ageRange:Ljava/lang/String;

    .line 130
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;-><init>()V

    .line 131
    .local v5, "dcsDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v20

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthMonth:Ljava/lang/String;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthYear:Ljava/lang/String;

    .line 134
    iput-object v5, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    .line 135
    iput-object v9, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    .line 138
    .end local v5    # "dcsDateOfBirth":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;
    .end local v9    # "demographics":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->createPreferenceList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/util/List;

    move-result-object v6

    .line 139
    .local v6, "dcsPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 140
    iput-object v6, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->preferences:Ljava/util/List;

    .line 143
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->createSubscriptionList(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/util/List;

    move-result-object v8

    .line 144
    .local v8, "dcsSubscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 145
    iput-object v8, v11, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->subscriptions:Ljava/util/List;

    .line 148
    :cond_a
    iput-object v11, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .line 150
    return-object v7

    .line 67
    .end local v6    # "dcsPreferences":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .end local v8    # "dcsSubscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    .end local v11    # "extended":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    .end local v12    # "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    .end local v13    # "hasPolicies":Z
    .end local v15    # "phoneNumber":Ljava/lang/String;
    .end local v16    # "policies":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method static indicatorForBoolean(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 574
    if-nez p0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Y"

    goto :goto_0

    :cond_1
    const-string v0, "N"

    goto :goto_0
.end method

.method private static stringOrNullIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "oldString"    # Ljava/lang/String;
    .param p1, "newString"    # Ljava/lang/String;

    .prologue
    .line 550
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    .end local p1    # "newString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "newString":Ljava/lang/String;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private toPrivatePolicy(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 4
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->accessPolicy:Ljava/util/List;

    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->accessPolicy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;

    .line 342
    .local v0, "policy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->acceptanceInd:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setHasAcceptedPrivacyPolicy(Z)V

    .line 344
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 345
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->acceptanceDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPrivacyPolicyAcceptanceDate(Ljava/lang/String;)V

    .line 346
    iget-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->expired:Z

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdatePrivacyPolicy(Z)V

    .line 351
    .end local v0    # "policy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    :cond_1
    return-void
.end method

.method private toTermsAndCondition(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 4
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 354
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->acceptancePolicies:Ljava/util/List;

    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;->acceptancePolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;

    .line 356
    .local v0, "policy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->acceptanceInd:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setHasAcceptedTermsAndCondition(Z)V

    .line 358
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmTermsAndConditionVersion(Ljava/lang/String;)V

    .line 359
    iget-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->acceptanceDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setTermsAndConditionAcceptanceDate(Ljava/lang/String;)V

    .line 360
    iget-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;->expired:Z

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldUpdateTermsAndCondition(Z)V

    .line 365
    .end local v0    # "policy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;
    :cond_1
    return-void
.end method


# virtual methods
.method public toCustomerProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 35

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 155
    const/4 v8, 0x0

    .line 336
    :goto_0
    return-object v8

    .line 158
    :cond_0
    new-instance v8, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 159
    .local v8, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->firstName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->middleName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMiddleName(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->lastName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->shortName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNickName(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->activeInd:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "A"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setIsActive(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    .line 168
    .local v30, "zipCodeAddress":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->details:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 169
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->details:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    .line 170
    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->addressLineDetails:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;

    .line 171
    .local v4, "addressLineDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->zipCode:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 172
    iget-object v0, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->zipCode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    .end local v4    # "addressLineDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v7, "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->addresses:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    .line 180
    .local v3, "address":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->toCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v3    # "address":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    :cond_2
    invoke-virtual {v8, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setCustomerAddresses(Ljava/util/List;)V

    .line 185
    .end local v7    # "customerAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    .end local v30    # "zipCodeAddress":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->emails:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->emails:Ljava/util/List;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;

    .line 187
    .local v9, "dcsEmail":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    iget-object v0, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;->emailAddress:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 189
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    .line 192
    .end local v9    # "dcsEmail":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSEmail;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->phones:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->base:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileBase;->phones:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;

    .line 194
    .local v25, "phone":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "cell"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 195
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;->number:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 201
    .end local v25    # "phone":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPhone;
    :cond_6
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setCardItems(Ljava/util/List;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v18, v0

    .line 204
    .local v18, "extendedCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    if-nez v18, :cond_7

    .line 205
    new-instance v18, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .end local v18    # "extendedCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    invoke-direct/range {v18 .. v18}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;-><init>()V

    .line 208
    .restart local v18    # "extendedCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
    :cond_7
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->favorites:Ljava/util/List;

    move-object/from16 v23, v0

    .line 209
    .local v23, "favoritesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    if-nez v23, :cond_8

    .line 210
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "favoritesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .restart local v23    # "favoritesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;>;"
    :cond_8
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v20, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v21, "favoriteStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v22, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_9
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    .line 216
    .local v19, "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Item"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Order"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 217
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->toFavoriteItems()Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 218
    :cond_b
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Location"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 219
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    move-object/from16 v16, v0

    .line 220
    .local v16, "detailsList":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    .line 221
    .local v15, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    iget v0, v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual/range {v19 .. v19}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->toStores()Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 227
    .end local v15    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    .end local v16    # "detailsList":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    .end local v19    # "favorite":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    :cond_c
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFavoriteItems(Ljava/util/List;)V

    .line 228
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFavoriteStoreIdList(Ljava/util/List;)V

    .line 229
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFavoriteStores(Ljava/util/List;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->policies:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    .line 232
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->toTermsAndCondition(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->toPrivatePolicy(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 236
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->gender:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ethnicity:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEthnicity(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ageRange:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAgeRange(Ljava/lang/String;)V

    .line 241
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 242
    .local v6, "calendar":Ljava/util/Calendar;
    const/16 v31, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 243
    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthMonth:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 244
    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthYear:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 245
    invoke-virtual {v8, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->extended:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setDayOfBirth(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 251
    .end local v6    # "calendar":Ljava/util/Calendar;
    :cond_e
    :goto_4
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->demographics:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    .line 252
    .local v14, "demographicsCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    if-nez v14, :cond_f

    .line 253
    new-instance v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;

    .end local v14    # "demographicsCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;-><init>()V

    .line 255
    .restart local v14    # "demographicsCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    :cond_f
    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->gender:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 256
    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ethnicity:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEthnicity(Ljava/lang/String;)V

    .line 257
    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->ageRange:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setAgeRange(Ljava/lang/String;)V

    .line 259
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 260
    .restart local v6    # "calendar":Ljava/util/Calendar;
    const/16 v31, 0x5

    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/16 v31, 0x2

    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthMonth:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 262
    const/16 v31, 0x1

    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthYear:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-virtual {v8, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 264
    iget-object v0, v14, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;->dateOfBirth:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics$DCSDateOfBirth;->birthDay:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setDayOfBirth(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .end local v6    # "calendar":Ljava/util/Calendar;
    :goto_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->preferences:Ljava/util/List;

    move-object/from16 v26, v0

    .line 269
    .local v26, "preferencesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    if-nez v26, :cond_10

    .line 270
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "preferencesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v26    # "preferencesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    :cond_10
    new-instance v24, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-direct/range {v24 .. v24}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;-><init>()V

    .line 275
    .local v24, "notificationPreferences":Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_14

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;

    .line 276
    .local v10, "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    iget-object v11, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->preferenceDesc:Ljava/lang/String;

    .line 277
    .local v11, "dcsPreferenceDesc":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EmailNotificationPreferences_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 278
    .local v17, "emailNotificationKey":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AppNotificationPreferences_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "appNotificationKey":Ljava/lang/String;
    iget-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    move/from16 v32, v0

    if-eqz v32, :cond_11

    .line 281
    iget-object v15, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    check-cast v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    .line 283
    .local v15, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    iget-object v0, v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->email:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->booleanFromLegacyStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 284
    iget-object v0, v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;->mobileApp:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->booleanFromLegacyStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_6

    .line 285
    .end local v15    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;
    :cond_11
    iget-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;

    move/from16 v32, v0

    if-eqz v32, :cond_13

    .line 286
    iget-object v15, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    check-cast v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;

    .line 288
    .local v15, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v27, "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v15, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;->mobileApp:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_7
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_12

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 290
    .local v12, "dcsPreferredOfferCategory":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 292
    .end local v12    # "dcsPreferredOfferCategory":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredOfferCategories(Ljava/util/List;)V

    goto/16 :goto_6

    .line 294
    .end local v15    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;
    .end local v27    # "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    iget-object v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;->enabled:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 295
    .local v29, "value":Ljava/lang/Boolean;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v11, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 300
    .end local v5    # "appNotificationKey":Ljava/lang/String;
    .end local v10    # "dcsPreference":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;
    .end local v11    # "dcsPreferenceDesc":Ljava/lang/String;
    .end local v17    # "emailNotificationKey":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/Boolean;
    :cond_14
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;->subscriptions:Ljava/util/List;

    move-object/from16 v28, v0

    .line 301
    .local v28, "subscriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    if-nez v28, :cond_15

    .line 302
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "subscriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .restart local v28    # "subscriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    :cond_15
    const-string v17, "EmailNotificationPreferences_Enabled"

    .line 306
    .restart local v17    # "emailNotificationKey":Ljava/lang/String;
    const-string v5, "AppNotificationPreferences_Enabled"

    .line 307
    .restart local v5    # "appNotificationKey":Ljava/lang/String;
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;

    .line 308
    .local v13, "dcsSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->subscriptionId:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v31, -0x1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->hashCode()I

    move-result v34

    sparse-switch v34, :sswitch_data_0

    :cond_16
    :goto_9
    packed-switch v31, :pswitch_data_0

    goto :goto_8

    .line 310
    :pswitch_0
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForCommunicationChannel(Ljava/lang/Boolean;)V

    goto :goto_8

    .line 308
    :sswitch_0
    const-string v34, "1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x0

    goto :goto_9

    :sswitch_1
    const-string v34, "2"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x1

    goto :goto_9

    :sswitch_2
    const-string v34, "3"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x2

    goto :goto_9

    :sswitch_3
    const-string v34, "4"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x3

    goto :goto_9

    :sswitch_4
    const-string v34, "5"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x4

    goto :goto_9

    :sswitch_5
    const-string v34, "7"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x5

    goto :goto_9

    :sswitch_6
    const-string v34, "10"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x6

    goto :goto_9

    :sswitch_7
    const-string v34, "11"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v31, 0x7

    goto :goto_9

    .line 313
    :pswitch_1
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForSurveys(Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 316
    :pswitch_2
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForProgramChanges(Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 319
    :pswitch_3
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForContests(Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 322
    :pswitch_4
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setOptInForOtherMarketingMessages(Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 325
    :pswitch_5
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSubscribedToOffers(Z)V

    goto/16 :goto_8

    .line 328
    :pswitch_6
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 331
    :pswitch_7
    iget-object v0, v13, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;->optInStatus:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;->booleanForIndicator(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 335
    .end local v13    # "dcsSubscription":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;
    :cond_17
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;)V

    goto/16 :goto_0

    .line 265
    .end local v5    # "appNotificationKey":Ljava/lang/String;
    .end local v17    # "emailNotificationKey":Ljava/lang/String;
    .end local v24    # "notificationPreferences":Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .end local v26    # "preferencesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference;>;"
    .end local v28    # "subscriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/DCSSubscription;>;"
    :catch_0
    move-exception v31

    goto/16 :goto_5

    :catch_1
    move-exception v31

    goto/16 :goto_5

    .line 247
    .end local v14    # "demographicsCopy":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSDemographics;
    :catch_2
    move-exception v31

    goto/16 :goto_4

    .line 308
    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x37 -> :sswitch_5
        0x61f -> :sswitch_6
        0x620 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
