.class public Lcom/mcdonalds/app/msa/MSAAlarmActivity;
.super Landroid/app/Activity;
.source "MSAAlarmActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mHourTo:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Landroid/media/MediaPlayer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mHourTo:I

    return v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Lcom/mcdonalds/sdk/modules/models/Offer;Z)Landroid/content/Intent;
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "x2"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$300"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->createNotificationIntent(Lcom/mcdonalds/sdk/modules/models/Offer;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Landroid/content/Intent;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$400"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->showNotification(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Ljava/util/List;)Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getMsaOffer(Ljava/util/List;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAAlarmActivity"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getUserOffer()V

    return-void
.end method

.method private authenticateUser(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const-string v1, "authenticateUser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 287
    .local v0, "cm":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    .line 288
    const v1, 0x7f0903ec

    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 289
    new-instance v1, Lcom/mcdonalds/app/msa/MSAAlarmActivity$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity$4;-><init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 298
    :cond_0
    return-void
.end method

.method private createNotificationIntent(Lcom/mcdonalds/sdk/modules/models/Offer;Z)Landroid/content/Intent;
    .locals 6
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "redirect"    # Z

    .prologue
    const-string v2, "createNotificationIntent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    if-eqz p2, :cond_1

    .line 356
    if-eqz p1, :cond_0

    .line 357
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "offer_selection_type"

    sget-object v3, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 360
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v3

    .line 359
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v2, "extra_offer"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 372
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 365
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/msa/MSAGenericActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 368
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getMsaOffer(Ljava/util/List;)Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)",
            "Lcom/mcdonalds/sdk/modules/models/Offer;"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v2, "getMsaOffer"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 303
    .local v10, "current":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 304
    .local v11, "dayOfWeekNow":I
    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 305
    .local v3, "hourOfDayNow":I
    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 306
    .local v4, "minuteNow":I
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 308
    .local v14, "timeNow":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 310
    .local v12, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v2

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_MSA:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v2, v5, :cond_0

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpirationChanged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v13

    .line 314
    .local v13, "validFrom":Ljava/util/Date;
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v20

    .line 315
    .local v20, "validThrough":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 316
    .local v16, "timeValidFrom":J
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 317
    .local v18, "timeValidThrough":J
    cmp-long v2, v14, v16

    if-ltz v2, :cond_0

    cmp-long v2, v14, v18

    if-gtz v2, :cond_0

    .line 318
    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Offer;->getAndConditions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;

    .line 319
    .local v9, "c":Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getDayOfWeek()I

    move-result v2

    if-ne v11, v2, :cond_1

    .line 320
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getHourOfDayFrom()I

    move-result v5

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getHourOfDayTo()I

    move-result v6

    .line 321
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getMinuteFrom()I

    move-result v7

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getMinuteTo()I

    move-result v8

    move-object/from16 v2, p0

    .line 319
    invoke-direct/range {v2 .. v8}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->timeCheck(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;->getHourOfDayTo()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mHourTo:I

    .line 332
    .end local v3    # "hourOfDayNow":I
    .end local v4    # "minuteNow":I
    .end local v9    # "c":Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;
    .end local v10    # "current":Ljava/util/Calendar;
    .end local v11    # "dayOfWeekNow":I
    .end local v12    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v13    # "validFrom":Ljava/util/Date;
    .end local v14    # "timeNow":J
    .end local v16    # "timeValidFrom":J
    .end local v18    # "timeValidThrough":J
    .end local v20    # "validThrough":Ljava/util/Date;
    :goto_0
    return-object v12

    :cond_2
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private getUserOffer()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-string v3, "getUserOffer"

    invoke-static {p0, v3, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 223
    .local v6, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const-string v3, "offers"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 224
    .local v0, "offersModule":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "username":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 227
    const-string v7, ""

    .line 228
    .local v7, "store":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 229
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    :cond_0
    const v3, 0x7f0903ec

    invoke-static {p0, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 232
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;-><init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getCustomerOffers(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 248
    .end local v7    # "store":Ljava/lang/String;
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_0
.end method

.method private loginUser()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    const-string v8, "loginUser"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 255
    .local v1, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "prefSavedLogin":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "prefSavedLoginPass":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v5

    .line 259
    .local v5, "prefSavedSocialID":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 260
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eq v5, v10, :cond_3

    :cond_0
    move v0, v7

    .line 262
    .local v0, "autoLogin":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 263
    if-eq v5, v10, :cond_1

    move v6, v7

    .line 264
    .local v6, "useSocial":Z
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 266
    .local v2, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    if-eqz v6, :cond_4

    .line 267
    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    .line 268
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 270
    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 271
    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 272
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->authenticateUser(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 283
    .end local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .end local v6    # "useSocial":Z
    :cond_2
    :goto_1
    return-void

    .end local v0    # "autoLogin":Z
    :cond_3
    move v0, v6

    .line 260
    goto :goto_0

    .line 277
    .restart local v0    # "autoLogin":Z
    .restart local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .restart local v6    # "useSocial":Z
    :cond_4
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->authenticateUser(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_1
.end method

.method private playAudio()V
    .locals 5

    .prologue
    const-string v3, "playAudio"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {p0}, Lcom/mcdonalds/app/msa/MSASettings;->getAlarmType(Landroid/content/Context;)I

    move-result v0

    .line 185
    .local v0, "alarmType":I
    sget v3, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v0, v3, :cond_1

    .line 186
    invoke-static {p0}, Lcom/mcdonalds/app/msa/MSASettings;->getAlarmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    .local v1, "musicUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 201
    .end local v1    # "musicUri":Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 203
    iget-object v3, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 205
    :cond_0
    return-void

    .line 188
    :cond_1
    sget v3, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_APP:I

    if-eq v0, v3, :cond_2

    sget v3, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_RANDOM:I

    if-ne v0, v3, :cond_3

    .line 192
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/mcdonalds/app/msa/MSASettings;->getAlarmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 193
    .local v2, "resId":I
    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v2    # "resId":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 198
    :cond_3
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private setupOffer()V
    .locals 3

    .prologue
    const-string v1, "setupOffer"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 211
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getUserOffer()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->loginUser()V

    goto :goto_0
.end method

.method private showNotification(Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sound"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "showNotification"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v7

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v8

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {p0, v4, p1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 379
    .local v3, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v4, 0x7f090530

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 381
    const v4, 0x7f090528

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 382
    if-eqz p2, :cond_0

    .line 383
    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 384
    .local v0, "alarmSound":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 386
    .end local v0    # "alarmSound":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 387
    const v4, 0x7f0201fd

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 388
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 390
    .local v2, "mgr":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 391
    return-void
.end method

.method private timeCheck(IIIIII)Z
    .locals 6
    .param p1, "hourOfDayNow"    # I
    .param p2, "minuteNow"    # I
    .param p3, "hourOfDayFrom"    # I
    .param p4, "hourOfDayTo"    # I
    .param p5, "minuteFrom"    # I
    .param p6, "minuteTo"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "timeCheck"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    mul-int/lit8 v2, p1, 0x3c

    add-int/2addr v2, p2

    mul-int/lit8 v3, p3, 0x3c

    add-int/2addr v3, p5

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, p1, 0x3c

    add-int/2addr v2, p2

    mul-int/lit8 v3, p4, 0x3c

    add-int/2addr v3, p6

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 398
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->createNotificationIntent(Lcom/mcdonalds/sdk/modules/models/Offer;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->showNotification(Landroid/content/Intent;Z)V

    .line 399
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const-string v10, "MSAAlarmActivity"

    invoke-static {v10}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v10, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v11, "MSAAlarmActivity#onCreate"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v10, "onCreate"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v10, 0x7f040028

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->setContentView(I)V

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 74
    .local v2, "c":Ljava/util/Calendar;
    const v10, 0x7f110461

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 75
    .local v5, "hour":Landroid/widget/TextView;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 76
    .local v6, "hourOfDay":I
    const/16 v10, 0xc

    if-le v6, v10, :cond_0

    .line 77
    add-int/lit8 v6, v6, -0xc

    .line 79
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v10, 0x7f110463

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 82
    .local v8, "min":Landroid/widget/TextView;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v10, "00"

    invoke-direct {v3, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, "df":Ljava/text/DecimalFormat;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v10, 0x7f110464

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, "amPm":Landroid/widget/TextView;
    const/16 v10, 0x9

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_1

    const v10, 0x7f090553

    :goto_1
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v10, 0x7f1100d5

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, "greeting":Landroid/widget/TextView;
    const/16 v10, 0x9

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_2

    const v10, 0x7f0907d6

    :goto_2
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 93
    const v10, 0x7f1100d7

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;

    invoke-direct {v11, p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity$1;-><init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v10, 0x7f1100d9

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    .line 106
    .local v9, "sw":Landroid/widget/Switch;
    new-instance v10, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;-><init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->playAudio()V

    .line 170
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->setupOffer()V

    .line 173
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->createNotificationIntent(Lcom/mcdonalds/sdk/modules/models/Offer;Z)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->showNotification(Landroid/content/Intent;Z)V

    .line 175
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v7, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "EVENT_NAME"

    const-string v11, "clockview"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v10, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 178
    invoke-virtual {v10, v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v10

    .line 179
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 180
    .local v1, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v10, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v10, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 181
    const-string v10, "onCreate"

    invoke-static {p0, v10}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "amPm":Landroid/widget/TextView;
    .end local v1    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v4    # "greeting":Landroid/widget/TextView;
    .end local v5    # "hour":Landroid/widget/TextView;
    .end local v6    # "hourOfDay":I
    .end local v7    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "min":Landroid/widget/TextView;
    .end local v9    # "sw":Landroid/widget/Switch;
    :catch_0
    move-exception v10

    const/4 v10, 0x0

    :try_start_1
    const-string v11, "MSAAlarmActivity#onCreate"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 86
    .restart local v0    # "amPm":Landroid/widget/TextView;
    .restart local v2    # "c":Ljava/util/Calendar;
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    .restart local v5    # "hour":Landroid/widget/TextView;
    .restart local v6    # "hourOfDay":I
    .restart local v8    # "min":Landroid/widget/TextView;
    :cond_1
    const v10, 0x7f090554

    goto :goto_1

    .line 90
    .restart local v4    # "greeting":Landroid/widget/TextView;
    :cond_2
    const v10, 0x7f0907cc

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v0, "onCreateDialog"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 404
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 406
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 408
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "onRestart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
