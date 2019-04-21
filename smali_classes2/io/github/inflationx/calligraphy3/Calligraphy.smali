.class Lio/github/inflationx/calligraphy3/Calligraphy;
.super Ljava/lang/Object;
.source "Calligraphy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_SUBTITLE:Ljava/lang/String; = "action_bar_subtitle"

.field private static final ACTION_BAR_TITLE:Ljava/lang/String; = "action_bar_title"


# instance fields
.field private final mAttributeId:[I

.field private final mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;


# direct methods
.method public constructor <init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig;)V
    .locals 3
    .param p1, "calligraphyConfig"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->getAttrId()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mAttributeId:[I

    .line 105
    return-void
.end method

.method private applyFontMapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "textViewFont"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    invoke-virtual {v1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->getFontMapper()Lio/github/inflationx/calligraphy3/FontMapper;

    move-result-object v0

    .line 214
    .local v0, "fontMapper":Lio/github/inflationx/calligraphy3/FontMapper;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/github/inflationx/calligraphy3/FontMapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "textViewFont":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getDefaultTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    invoke-virtual {v0}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->getFontPath()Ljava/lang/String;

    move-result-object p2

    .line 186
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Lio/github/inflationx/calligraphy3/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isActionBarSubTitle(Landroid/widget/TextView;)Z
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 74
    const-string v1, "action_bar_subtitle"

    invoke-static {p0, v1}, Lio/github/inflationx/calligraphy3/Calligraphy;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    .line 75
    :cond_0
    invoke-static {p0}, Lio/github/inflationx/calligraphy3/Calligraphy;->parentIsToolbarV7(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 77
    .local v0, "parent":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 79
    .end local v0    # "parent":Landroid/support/v7/widget/Toolbar;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isActionBarTitle(Landroid/widget/TextView;)Z
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 58
    const-string v1, "action_bar_title"

    invoke-static {p0, v1}, Lio/github/inflationx/calligraphy3/Calligraphy;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 63
    :goto_0
    return v1

    .line 59
    :cond_0
    invoke-static {p0}, Lio/github/inflationx/calligraphy3/Calligraphy;->parentIsToolbarV7(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 61
    .local v0, "parent":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 63
    .end local v0    # "parent":Landroid/support/v7/widget/Toolbar;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matches"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "resourceEntryName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected static parentIsToolbarV7(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-static {}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->canCheckForV7Toolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 197
    iget-object v1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mAttributeId:[I

    invoke-static {p1, p2, v1}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->pullFontPathFromView(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "textViewFont":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mAttributeId:[I

    invoke-static {p1, p2, v1}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->pullFontPathFromStyle(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mAttributeId:[I

    invoke-static {p1, p2, v1}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->pullFontPathFromTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected getStyleForTextView(Landroid/widget/TextView;)[I
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const v4, 0x10102ce

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 34
    .local v0, "styleIds":[I
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/Calligraphy;->isActionBarTitle(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    aput v4, v0, v3

    .line 36
    const v1, 0x10102f8

    aput v1, v0, v2

    .line 41
    :cond_0
    :goto_0
    aget v1, v0, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 43
    iget-object v1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    invoke-virtual {v1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->getClassStyles()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    .line 44
    invoke-virtual {v1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->getClassStyles()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    aput v1, v0, v3

    .line 47
    :cond_1
    return-object v0

    .line 37
    :cond_2
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/Calligraphy;->isActionBarSubTitle(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    aput v4, v0, v3

    .line 39
    const v1, 0x10102f9

    aput v1, v0, v2

    goto :goto_0

    .line 44
    :cond_3
    const v1, 0x1010034

    goto :goto_1

    .line 32
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    sget v0, Lio/github/inflationx/calligraphy3/R$id;->calligraphy_tag_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lio/github/inflationx/calligraphy3/Calligraphy;->onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    sget v0, Lio/github/inflationx/calligraphy3/R$id;->calligraphy_tag_id:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    :cond_0
    return-object p1
.end method

.method onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    instance-of v7, p1, Landroid/widget/TextView;

    if-eqz v7, :cond_4

    move-object v7, p1

    .line 129
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {v7}, Lio/github/inflationx/calligraphy3/TypefaceUtils;->isLoaded(Landroid/graphics/Typeface;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p2, p3}, Lio/github/inflationx/calligraphy3/Calligraphy;->resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "textViewFont":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p1

    .line 140
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lio/github/inflationx/calligraphy3/Calligraphy;->getStyleForTextView(Landroid/widget/TextView;)[I

    move-result-object v3

    .line 141
    .local v3, "styleForTextView":[I
    aget v7, v3, v9

    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    .line 142
    aget v7, v3, v8

    aget v10, v3, v9

    iget-object v11, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mAttributeId:[I

    invoke-static {p2, v7, v10, v11}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->pullFontPathFromTheme(Landroid/content/Context;II[I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .end local v3    # "styleForTextView":[I
    :cond_2
    :goto_1
    invoke-direct {p0, v4}, Lio/github/inflationx/calligraphy3/Calligraphy;->applyFontMapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    const-string v7, "action_bar_title"

    invoke-static {p1, v7}, Lio/github/inflationx/calligraphy3/Calligraphy;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "action_bar_subtitle"

    invoke-static {p1, v7}, Lio/github/inflationx/calligraphy3/Calligraphy;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    move v0, v9

    .local v0, "deferred":Z
    :goto_2
    move-object v7, p1

    .line 152
    check-cast v7, Landroid/widget/TextView;

    iget-object v10, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    invoke-static {p2, v7, v10, v4, v0}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Lio/github/inflationx/calligraphy3/CalligraphyConfig;Ljava/lang/String;Z)V

    .line 157
    .end local v0    # "deferred":Z
    .end local v4    # "textViewFont":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->canCheckForV7Toolbar()Z

    move-result v7

    if-eqz v7, :cond_5

    instance-of v7, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v7, :cond_5

    move-object v5, p1

    .line 158
    check-cast v5, Landroid/support/v7/widget/Toolbar;

    .line 159
    .local v5, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v10, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, p2, v5, v11}, Lio/github/inflationx/calligraphy3/Calligraphy$ToolbarLayoutListener;-><init>(Lio/github/inflationx/calligraphy3/Calligraphy;Landroid/content/Context;Landroid/support/v7/widget/Toolbar;Lio/github/inflationx/calligraphy3/Calligraphy$1;)V

    invoke-virtual {v7, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 163
    .end local v5    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_5
    instance-of v7, p1, Lio/github/inflationx/calligraphy3/HasTypeface;

    if-eqz v7, :cond_8

    .line 164
    invoke-direct {p0, p2, p3}, Lio/github/inflationx/calligraphy3/Calligraphy;->resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .restart local v4    # "textViewFont":Ljava/lang/String;
    invoke-direct {p0, v4}, Lio/github/inflationx/calligraphy3/Calligraphy;->applyFontMapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-direct {p0, p2, v4}, Lio/github/inflationx/calligraphy3/Calligraphy;->getDefaultTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 167
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-eqz v6, :cond_0

    .line 168
    check-cast p1, Lio/github/inflationx/calligraphy3/HasTypeface;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, v6}, Lio/github/inflationx/calligraphy3/HasTypeface;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 144
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .restart local v3    # "styleForTextView":[I
    .restart local p1    # "view":Landroid/view/View;
    :cond_6
    aget v7, v3, v8

    iget-object v10, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mAttributeId:[I

    invoke-static {p2, v7, v10}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->pullFontPathFromTheme(Landroid/content/Context;I[I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .end local v3    # "styleForTextView":[I
    :cond_7
    move v0, v8

    .line 150
    goto :goto_2

    .line 170
    .end local v4    # "textViewFont":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    invoke-virtual {v7}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->isCustomViewTypefaceSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lio/github/inflationx/calligraphy3/Calligraphy;->mCalligraphyConfig:Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    invoke-virtual {v7, p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->isCustomViewHasTypeface(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v10, "setTypeface"

    invoke-static {v7, v10}, Lio/github/inflationx/viewpump/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 172
    .local v2, "setTypeface":Ljava/lang/reflect/Method;
    invoke-direct {p0, p2, p3}, Lio/github/inflationx/calligraphy3/Calligraphy;->resolveFontPath(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "fontPath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lio/github/inflationx/calligraphy3/Calligraphy;->applyFontMapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-direct {p0, p2, v1}, Lio/github/inflationx/calligraphy3/Calligraphy;->getDefaultTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 175
    .restart local v6    # "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    .line 176
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {p1, v2, v7}, Lio/github/inflationx/viewpump/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
