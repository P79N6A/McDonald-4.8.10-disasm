.class public Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "TutorialPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/internal/LinkedTreeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/internal/LinkedTreeMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 25
    iput-object p2, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->mScreens:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const-string v4, "getItem"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "imageId":I
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "locale":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    iget-object v5, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v7, "image"

    invoke-virtual {v4, v7}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_zh"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mcdonalds/app/util/UIUtils;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 38
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v5, "caption"

    invoke-virtual {v4, v5}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->localizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "caption":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v5, "imageBackgroundColor"

    invoke-virtual {v4, v5}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "color":Ljava/lang/String;
    invoke-static {p1, v2, v0, v1}, Lcom/mcdonalds/app/tutorial/TutorialScreenFragment;->newInstance(IILjava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/app/tutorial/TutorialScreenFragment;

    move-result-object v4

    return-object v4

    .line 36
    .end local v0    # "caption":Ljava/lang/String;
    .end local v1    # "color":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v6, "image"

    invoke-virtual {v4, v6}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/mcdonalds/app/util/UIUtils;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public localizedStringForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v1, "localizedStringForKey"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    if-eqz p1, :cond_2

    .line 46
    const-string v1, "raw:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 51
    .restart local p1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 58
    .end local v0    # "resourceId":I
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method
