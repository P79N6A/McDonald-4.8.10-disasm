.class Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;
.super Ljava/lang/Object;
.source "MSAAlarmActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSAAlarmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "onCheckedChanged"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v10

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v7, v11

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$000(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$000(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V

    .line 112
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-virtual {v6}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->finish()V

    .line 116
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$100(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 118
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/util/ServiceUtils;->removeOffersCache()V

    .line 120
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    const-class v7, Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v2, "extras":Landroid/os/Bundle;
    const-string v6, "offer_selection_type"

    sget-object v7, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 123
    invoke-virtual {v7}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v7

    .line 122
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v6, "extra_offer"

    iget-object v7, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v7}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$100(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    const-string v6, "offers"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 131
    .local v5, "m":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 132
    .local v1, "c":Ljava/util/Calendar;
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v6, 0xc

    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v6, 0xb

    iget-object v7, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v7}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$200(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$100(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 137
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    new-instance v9, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2$1;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2$1;-><init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;)V

    .line 136
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->setOfferExpiration(Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 150
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v5    # "m":Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-virtual {v6, v3}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    if-eqz p2, :cond_1

    .line 153
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v4, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "EVENT_NAME"

    const-string v7, "clockstop"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v6, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 156
    invoke-virtual {v6, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v6

    .line 157
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 158
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v6, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v6, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 161
    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    iget-object v7, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    iget-object v8, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v8}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$100(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$300(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Lcom/mcdonalds/sdk/modules/models/Offer;Z)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$400(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Landroid/content/Intent;Z)V

    .line 163
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v4    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 148
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$2;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    const-class v7, Lcom/mcdonalds/app/msa/MSAGenericActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
