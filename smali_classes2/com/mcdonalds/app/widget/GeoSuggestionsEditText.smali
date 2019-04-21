.class public Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
.super Landroid/widget/FrameLayout;
.source "GeoSuggestionsEditText.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;
    }
.end annotation


# instance fields
.field private field:Landroid/widget/AutoCompleteTextView;

.field private mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mSearchFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

.field private mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

.field private suffix:Ljava/lang/String;

.field private suggestionsAdapter:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mSearchFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    .line 43
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    new-instance v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mSearchFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    .line 48
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Landroid/widget/AutoCompleteTextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.GeoSuggestionsEditText"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.GeoSuggestionsEditText"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.GeoSuggestionsEditText"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.GeoSuggestionsEditText"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v14, "init"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const v14, 0x7f0401a0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v14, v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->isInEditMode()Z

    move-result v14

    if-nez v14, :cond_3

    .line 57
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    .line 59
    .local v2, "configuration":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v14, "interface.storelocator.predictiveGeocoder.android.searchSuffix"

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suffix:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suffix:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 61
    const-string v14, "interface.storelocator.predictiveGeocoderSearchSuffix"

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suffix:Ljava/lang/String;

    .line 64
    :cond_0
    const-string v14, "interface.storelocator.predictiveGeocoder.android.bounds.southeast.latitude"

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v10

    .line 65
    .local v10, "southeastLatitude":D
    const-string v14, "interface.storelocator.predictiveGeocoder.android.bounds.southeast.longitude"

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v12

    .line 66
    .local v12, "southeastLongitude":D
    const-string v14, "interface.storelocator.predictiveGeocoder.android.bounds.northwest.latitude"

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v4

    .line 67
    .local v4, "northwestLatitude":D
    const-string v14, "interface.storelocator.predictiveGeocoder.android.bounds.northwest.longitude"

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v6

    .line 69
    .local v6, "northwestLongitude":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v10, v14

    if-eqz v14, :cond_1

    const-wide/16 v14, 0x0

    cmpl-double v14, v12, v14

    if-eqz v14, :cond_1

    const-wide/16 v14, 0x0

    cmpl-double v14, v4, v14

    if-eqz v14, :cond_1

    const-wide/16 v14, 0x0

    cmpl-double v14, v6, v14

    if-eqz v14, :cond_1

    .line 70
    new-instance v14, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-direct {v14, v10, v11, v12, v13}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mSoutheastBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 71
    new-instance v14, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-direct {v14, v4, v5, v6, v7}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mNorthwestBound:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 75
    :cond_1
    new-instance v14, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suggestionsAdapter:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suggestionsAdapter:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

    new-instance v15, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;)V

    invoke-virtual {v14, v15}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->setFilter(Landroid/widget/Filter;)V

    .line 78
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.storelocator.predictiveGeocoderInputThreshold"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v9

    .line 79
    .local v9, "threshold":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v14

    const-string v15, "interface.storelocator.showPredictiveGeocoderResults"

    invoke-virtual {v14, v15}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    .line 81
    .local v8, "showSuggestions":Z
    const v14, 0x7f110535

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mSearchFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    const/4 v14, 0x1

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 84
    .local v3, "px":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 86
    if-eqz v8, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suggestionsAdapter:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v9}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 91
    :cond_2
    const v14, 0x7f110536

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .end local v2    # "configuration":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .end local v3    # "px":I
    .end local v4    # "northwestLatitude":D
    .end local v6    # "northwestLongitude":D
    .end local v8    # "showSuggestions":Z
    .end local v9    # "threshold":I
    .end local v10    # "southeastLatitude":D
    .end local v12    # "southeastLongitude":D
    :cond_3
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const-string v0, "clearFocus"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 117
    return-void
.end method

.method public getCleanText()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getCleanText"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField()Landroid/widget/AutoCompleteTextView;
    .locals 2

    .prologue
    const-string v0, "getField"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getText"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const-string v0, "isEmpty"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

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

.method public onGeolocation(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-string v0, "onGeolocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->suggestionsAdapter:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->setAddresses(Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 3
    .param p1, "onEditorActionListener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    const-string v0, "setOnEditorActionListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 3
    .param p1, "onFocusChangeListener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    const-string v0, "setOnFocusChangeListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 112
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "setText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method
