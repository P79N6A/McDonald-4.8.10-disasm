.class public Lio/github/inflationx/calligraphy3/CalligraphyConfig;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasTypefaceViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mAttrId:I

.field private final mClassStyleAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomViewTypefaceSupport:Z

.field private final mFontMapper:Lio/github/inflationx/calligraphy3/FontMapper;

.field private final mFontPath:Ljava/lang/String;

.field private final mIsFontSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x101006b

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    .line 34
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/TextView;

    const v2, 0x1010084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    const v2, 0x1010048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/EditText;

    const v2, 0x101006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/AutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x101006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x101007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x101004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lio/github/inflationx/calligraphy3/CalligraphyUtils;->canAddV7AppCompatViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->addAppCompatViews()V

    .line 46
    :cond_0
    return-void
.end method

.method private constructor <init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$000(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mIsFontSet:Z

    .line 95
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$100(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$200(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)I

    move-result v1

    iput v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mAttrId:I

    .line 97
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$300(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mCustomViewTypefaceSupport:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    .local v0, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroid/widget/TextView;>;Ljava/lang/Integer;>;"
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$400(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mClassStyleAttributeMap:Ljava/util/Map;

    .line 101
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$500(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->hasTypefaceViews:Ljava/util/Set;

    .line 102
    invoke-static {p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->access$600(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Lio/github/inflationx/calligraphy3/FontMapper;

    move-result-object v1

    iput-object v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mFontMapper:Lio/github/inflationx/calligraphy3/FontMapper;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;Lio/github/inflationx/calligraphy3/CalligraphyConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    .param p2, "x1"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;-><init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)V

    return-void
.end method

.method private static addAppCompatViews()V
    .locals 4

    .prologue
    const v3, 0x101006b

    .line 53
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatTextView;

    const v2, 0x1010084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatButton;

    const v2, 0x1010048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatEditText;

    const v2, 0x101006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatCheckBox;

    const v2, 0x101006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatRadioButton;

    const v2, 0x101007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/support/v7/widget/AppCompatCheckedTextView;

    const v2, 0x10103c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public getAttrId()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mAttrId:I

    return v0
.end method

.method getClassStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mClassStyleAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFontMapper()Lio/github/inflationx/calligraphy3/FontMapper;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mFontMapper:Lio/github/inflationx/calligraphy3/FontMapper;

    return-object v0
.end method

.method public getFontPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomViewHasTypeface(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->hasTypefaceViews:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCustomViewTypefaceSupport()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mCustomViewTypefaceSupport:Z

    return v0
.end method

.method isFontSet()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;->mIsFontSet:Z

    return v0
.end method
