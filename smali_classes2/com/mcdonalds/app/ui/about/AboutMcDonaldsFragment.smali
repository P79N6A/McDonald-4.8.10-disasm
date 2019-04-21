.class public Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "AboutMcDonaldsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CAREERS_KEY:Ljava/lang/String;

.field private final CHARITY_KEY:Ljava/lang/String;

.field private final CONTACT_US_KEY:Ljava/lang/String;

.field private final ORDER_HOTLINE:Ljava/lang/String;

.field private final QUESTION_KEY:Ljava/lang/String;

.field private final SINA_WEIBO_KEY:Ljava/lang/String;

.field private final TECHNICAL_HOTLINE:Ljava/lang/String;

.field private final WE_CHAT_KEY:Ljava/lang/String;

.field private mAnalyticsTitle:Ljava/lang/String;

.field private mArgs:Landroid/os/Bundle;

.field private mLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 31
    const-string v0, "interface.aboutMcDonald.contactUs"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->CONTACT_US_KEY:Ljava/lang/String;

    .line 32
    const-string v0, "interface.aboutMcDonald.careers"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->CAREERS_KEY:Ljava/lang/String;

    .line 33
    const-string v0, "interface.aboutMcDonald.charity"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->CHARITY_KEY:Ljava/lang/String;

    .line 34
    const-string v0, "interface.aboutMcDonald.ourfoodyourquestions"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->QUESTION_KEY:Ljava/lang/String;

    .line 35
    const-string v0, "interface.aboutMcDonald.sinaWeibo"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->SINA_WEIBO_KEY:Ljava/lang/String;

    .line 36
    const-string v0, "interface.aboutMcDonald.weChat"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->WE_CHAT_KEY:Ljava/lang/String;

    .line 38
    const-string v0, "+852 3762 1620"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->TECHNICAL_HOTLINE:Ljava/lang/String;

    .line 39
    const-string v0, "+852 2338 2338"

    iput-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->ORDER_HOTLINE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.about.AboutMcDonaldsFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.about.AboutMcDonaldsFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;ZI)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.about.AboutMcDonaldsFragment"

    const-string v2, "access$200"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->openLink(ZI)V

    return-void
.end method

.method private getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "getLocalizedPropertyFromConfiguration"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private openDeepLink()V
    .locals 7

    .prologue
    const-string v5, "openDeepLink"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 375
    .local v0, "extras":Landroid/os/Bundle;
    const-string v5, "Uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 376
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 381
    .local v2, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 385
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    .local v1, "path":Ljava/lang/String;
    const-string v5, "ofyq"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.aboutMcDonald.ourfoodyourquestions"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 388
    const-string v5, "interface.aboutMcDonald.ourfoodyourquestions"

    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 390
    const v3, 0x7f0905d3

    .line 391
    .local v3, "titleResource":I
    const/4 v5, 0x1

    invoke-direct {p0, v5, v3}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->openLink(ZI)V

    goto :goto_0
.end method

.method private openLink(ZI)V
    .locals 4
    .param p1, "useTagForAnalytics"    # Z
    .param p2, "viewTitle"    # I

    .prologue
    const-string v0, "openLink"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "analytics_title"

    iget-object v2, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    if-eqz p2, :cond_1

    .line 364
    iget-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "view_title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "link"

    iget-object v2, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-class v0, Lcom/mcdonalds/app/web/WebHamburgerActivity;

    const-string v1, "web"

    iget-object v2, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const v0, 0x7f090855

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v10, "onClick"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 158
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "requiresUser":Z
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 161
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mArgs:Landroid/os/Bundle;

    .line 162
    const/4 v8, 0x0

    .line 164
    .local v8, "titleResource":I
    const/4 v3, 0x0

    .line 165
    .local v3, "link":Ljava/lang/String;
    const/4 v7, 0x0

    .line 166
    .local v7, "title":I
    const/4 v0, 0x0

    .line 168
    .local v0, "analyticsTitle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 337
    :goto_0
    :pswitch_0
    if-nez v6, :cond_0

    iget-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 338
    const/4 v10, 0x1

    invoke-direct {p0, v10, v8}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->openLink(ZI)V

    .line 341
    :cond_0
    if-eqz v3, :cond_1

    .line 342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v1, "args":Landroid/os/Bundle;
    const-string v10, "link"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v10, "view_title"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v10, "analytics_title"

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-class v10, Lcom/mcdonalds/app/web/WebHamburgerActivity;

    const-string v11, "web"

    invoke-virtual {p0, v10, v11, v1}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 351
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 170
    :pswitch_1
    const-string v10, "interface.aboutMcDonald.careers"

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 171
    const v10, 0x7f090856

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 172
    const v8, 0x7f090155

    .line 173
    goto :goto_0

    .line 175
    :pswitch_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "zh"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 176
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "interface.aboutMcDonald.contactUs.zh"

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 181
    :goto_1
    const v10, 0x7f090857

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 182
    const v8, 0x7f090181

    .line 183
    goto :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "interface.aboutMcDonald.contactUs.en"

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    goto :goto_1

    .line 185
    :pswitch_3
    const-string v3, "https://www.facebook.com/mcdonaldshongkong"

    .line 186
    const v7, 0x7f09035e

    .line 199
    goto :goto_0

    .line 201
    :pswitch_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    .line 202
    const-string v10, "interface.aboutMcDonald.sinaWeibo"

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 203
    const v10, 0x7f090858

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 204
    const v8, 0x7f0906e0

    .line 205
    goto/16 :goto_0

    .line 207
    :pswitch_5
    const-string v10, "interface.aboutMcDonald.weChat"

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 208
    const v10, 0x7f090859

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 209
    const v8, 0x7f09081f

    .line 210
    goto/16 :goto_0

    .line 212
    :pswitch_6
    const-string v10, "interface.aboutMcDonald.ourfoodyourquestions"

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getLocalizedPropertyFromConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mLink:Ljava/lang/String;

    .line 213
    const v10, 0x7f090859

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 214
    const v8, 0x7f0905d3

    .line 215
    goto/16 :goto_0

    .line 217
    :pswitch_7
    const/4 v6, 0x1

    .line 218
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/16 v11, 0xc

    invoke-static {v10, v11}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v5

    .line 220
    .local v5, "padding":I
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 221
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e0031

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0906b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0905d4

    new-instance v12, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;

    invoke-direct {v12, p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$2;-><init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V

    .line 225
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0901bb

    new-instance v12, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$1;

    invoke-direct {v12, p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$1;-><init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V

    .line 232
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 238
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 239
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 243
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "padding":I
    :pswitch_8
    const-string v10, "registerTOC"

    invoke-static {v10}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    const v7, 0x7f09074a

    .line 245
    const v10, 0x7f090854

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    goto/16 :goto_0

    .line 248
    :pswitch_9
    const-string v10, "privacy"

    invoke-static {v10}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const v7, 0x7f09064e

    .line 250
    const v10, 0x7f090853

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    goto/16 :goto_0

    .line 253
    :pswitch_a
    const-string v10, "FAQ"

    invoke-static {v10}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    if-nez v3, :cond_3

    .line 257
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "zh"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 258
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "interface.legalCopy.FAQ.zh"

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "link":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 262
    .restart local v3    # "link":Ljava/lang/String;
    :cond_3
    :goto_2
    const v7, 0x7f090357

    .line 263
    const v10, 0x7f090852

    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    goto/16 :goto_0

    .line 260
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "interface.legalCopy.FAQ.en"

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "link":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "link":Ljava/lang/String;
    goto :goto_2

    .line 266
    :pswitch_b
    const-string v3, "http://www.mcdonalds.com.hk"

    .line 267
    const v7, 0x7f090a4d

    .line 268
    goto/16 :goto_0

    .line 270
    :pswitch_c
    const-string v3, "https://www.instagram.com/mccafe.hk"

    .line 271
    const v7, 0x7f090a1c

    .line 272
    goto/16 :goto_0

    .line 274
    :pswitch_d
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090140

    .line 275
    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+852 3762 1620"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f0905d4

    new-instance v12, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$4;

    invoke-direct {v12, p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$4;-><init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V

    .line 276
    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f090145

    new-instance v12, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$3;

    invoke-direct {v12, p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$3;-><init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V

    .line 284
    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    .line 290
    invoke-virtual {v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v10

    .line 291
    invoke-virtual {v10}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 294
    :pswitch_e
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090140

    .line 295
    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+852 2338 2338"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f0905d4

    new-instance v12, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$6;

    invoke-direct {v12, p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$6;-><init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V

    .line 296
    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    const v11, 0x7f090145

    new-instance v12, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$5;

    invoke-direct {v12, p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment$5;-><init>(Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;)V

    .line 304
    invoke-virtual {v10, v11, v12}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v10

    .line 310
    invoke-virtual {v10}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v10

    .line 311
    invoke-virtual {v10}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 314
    :pswitch_f
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "zh"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 315
    const-string v3, "http://www.mcdonalds.com.hk/ch/about-us/contact-us.html"

    .line 319
    :goto_3
    const v7, 0x7f0900e2

    .line 320
    goto/16 :goto_0

    .line 317
    :cond_5
    const-string v3, "http://www.mcdonalds.com.hk/en/about-us/contact-us.html"

    goto :goto_3

    .line 322
    :pswitch_10
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "kodo.app.mcdhk"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 323
    .local v2, "intentForPackage":Landroid/content/Intent;
    if-eqz v2, :cond_6

    .line 324
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 326
    :cond_6
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    const-string v11, "market://details?id=kodo.app.mcdhk"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    .local v9, "viewIntent":Landroid/content/Intent;
    if-eqz v9, :cond_7

    .line 328
    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 330
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f090583

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x7f110209
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_b
        :pswitch_3
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 33
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v29, 0x7f04007f

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 51
    .local v20, "rootView":Landroid/view/View;
    const v29, 0x7f110204

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 52
    .local v27, "versionText":Landroid/widget/TextView;
    const-string v29, "4.8.10"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v29, 0x7f110205

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 56
    .local v7, "copyrightText":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 57
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 58
    .local v18, "res":Landroid/content/res/Resources;
    const v29, 0x7f0907d1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 59
    .local v26, "text":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v29, 0x7f110209

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    .line 62
    .local v25, "termsButton":Landroid/widget/Button;
    const v29, 0x7f11020a

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 63
    .local v17, "privacyButton":Landroid/widget/Button;
    const v29, 0x7f11020b

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 65
    .local v8, "faqButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "hideFaqButton"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 66
    .local v11, "hideFaq":Z
    if-eqz v11, :cond_0

    .line 67
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    :goto_0
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v29, 0x7f11020c

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 78
    .local v23, "technicalHotline":Landroid/widget/TextView;
    const v29, 0x7f11020e

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 79
    .local v16, "orderHotline":Landroid/widget/TextView;
    const v29, 0x7f090748

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "+852 3762 1620"

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v29, 0x7f090395

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "+852 2338 2338"

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v29, 0x7f11020d

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 82
    .local v24, "technicalSupportutton":Landroid/widget/Button;
    const v29, 0x7f11020f

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 83
    .local v13, "mcdeliveryOrderButton":Landroid/widget/Button;
    const v29, 0x7f110210

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 84
    .local v10, "generalEnquiresButton":Landroid/widget/Button;
    const v29, 0x7f110211

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 86
    .local v22, "specificRestaurantButton":Landroid/widget/Button;
    const v29, 0x7f110212

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 87
    .local v5, "careersButton":Landroid/widget/Button;
    const v29, 0x7f110216

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 88
    .local v19, "rmhcButton":Landroid/widget/Button;
    const v29, 0x7f110217

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 89
    .local v15, "ofyqButton":Landroid/widget/Button;
    const v29, 0x7f11021a

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 90
    .local v6, "contactUsButton":Landroid/widget/Button;
    const v29, 0x7f110214

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 91
    .local v9, "feedbackButton":Landroid/widget/Button;
    const v29, 0x7f110218

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 92
    .local v21, "sinaWeiboButton":Landroid/widget/Button;
    const v29, 0x7f110219

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 93
    .local v28, "weChatButton":Landroid/widget/Button;
    const v29, 0x7f110213

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 94
    .local v14, "officialWebsiteButton":Landroid/widget/Button;
    const v29, 0x7f110215

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 95
    .local v12, "instagramButton":Landroid/widget/Button;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v29

    const-string v30, "interface.aboutMcDonald.careers"

    invoke-virtual/range {v29 .. v30}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 106
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :goto_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v29

    const-string v30, "interface.aboutMcDonald.charity"

    invoke-virtual/range {v29 .. v30}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_2

    .line 113
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :goto_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v29

    const-string v30, "interface.aboutMcDonald.ourfoodyourquestions"

    invoke-virtual/range {v29 .. v30}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_3

    .line 120
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v29

    const-string v30, "interface.aboutMcDonald.sinaWeibo"

    invoke-virtual/range {v29 .. v30}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 127
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :goto_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v29

    const-string v30, "interface.aboutMcDonald.weChat"

    invoke-virtual/range {v29 .. v30}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_5

    .line 134
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :goto_5
    return-object v20

    .line 69
    .end local v5    # "careersButton":Landroid/widget/Button;
    .end local v6    # "contactUsButton":Landroid/widget/Button;
    .end local v9    # "feedbackButton":Landroid/widget/Button;
    .end local v10    # "generalEnquiresButton":Landroid/widget/Button;
    .end local v12    # "instagramButton":Landroid/widget/Button;
    .end local v13    # "mcdeliveryOrderButton":Landroid/widget/Button;
    .end local v14    # "officialWebsiteButton":Landroid/widget/Button;
    .end local v15    # "ofyqButton":Landroid/widget/Button;
    .end local v16    # "orderHotline":Landroid/widget/TextView;
    .end local v19    # "rmhcButton":Landroid/widget/Button;
    .end local v21    # "sinaWeiboButton":Landroid/widget/Button;
    .end local v22    # "specificRestaurantButton":Landroid/widget/Button;
    .end local v23    # "technicalHotline":Landroid/widget/TextView;
    .end local v24    # "technicalSupportutton":Landroid/widget/Button;
    .end local v28    # "weChatButton":Landroid/widget/Button;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 109
    .restart local v5    # "careersButton":Landroid/widget/Button;
    .restart local v6    # "contactUsButton":Landroid/widget/Button;
    .restart local v9    # "feedbackButton":Landroid/widget/Button;
    .restart local v10    # "generalEnquiresButton":Landroid/widget/Button;
    .restart local v12    # "instagramButton":Landroid/widget/Button;
    .restart local v13    # "mcdeliveryOrderButton":Landroid/widget/Button;
    .restart local v14    # "officialWebsiteButton":Landroid/widget/Button;
    .restart local v15    # "ofyqButton":Landroid/widget/Button;
    .restart local v16    # "orderHotline":Landroid/widget/TextView;
    .restart local v19    # "rmhcButton":Landroid/widget/Button;
    .restart local v21    # "sinaWeiboButton":Landroid/widget/Button;
    .restart local v22    # "specificRestaurantButton":Landroid/widget/Button;
    .restart local v23    # "technicalHotline":Landroid/widget/TextView;
    .restart local v24    # "technicalSupportutton":Landroid/widget/Button;
    .restart local v28    # "weChatButton":Landroid/widget/Button;
    :cond_1
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_2
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 123
    :cond_3
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 130
    :cond_4
    const/16 v29, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 137
    :cond_5
    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->openDeepLink()V

    .line 149
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 398
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 399
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 404
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutMcDonaldsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 405
    return-void
.end method
