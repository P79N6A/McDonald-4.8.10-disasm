.class public Lcom/mcdonalds/app/ui/font/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontSpecifications()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.ui.font.FontManager"

    const-string v2, "getFontSpecifications"

    invoke-static {v3, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.fontSpecification.android.normalFont"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    .local v0, "fontSpecification":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initializeFonts()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ui.font.FontManager"

    const-string v1, "initializeFonts"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->builder()Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    new-instance v1, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;

    new-instance v2, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    invoke-direct {v2}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;-><init>()V

    .line 25
    invoke-static {}, Lcom/mcdonalds/app/ui/font/FontManager;->getFontSpecifications()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    move-result-object v2

    const v3, 0x7f010001

    .line 26
    invoke-virtual {v2, v3}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->setFontAttrId(I)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->build()Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;-><init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig;)V

    .line 23
    invoke-virtual {v0, v1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump$Builder;->build()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lio/github/inflationx/viewpump/ViewPump;->init(Lio/github/inflationx/viewpump/ViewPump;)V

    .line 30
    return-void
.end method
