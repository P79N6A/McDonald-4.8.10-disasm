.class public Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/calligraphy3/CalligraphyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final INVALID_ATTR_ID:I = -0x1


# instance fields
.field private attrId:I

.field private customViewTypefaceSupport:Z

.field private fontAssetPath:Ljava/lang/String;

.field private fontMapper:Lio/github/inflationx/calligraphy3/FontMapper;

.field private isFontSet:Z

.field private mHasTypefaceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mStyleClassMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->customViewTypefaceSupport:Z

    .line 154
    sget v0, Lio/github/inflationx/calligraphy3/R$attr;->fontPath:I

    iput v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->attrId:I

    .line 158
    iput-boolean v1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->isFontSet:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->mHasTypefaceClasses:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->isFontSet:Z

    return v0
.end method

.method static synthetic access$100(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->attrId:I

    return v0
.end method

.method static synthetic access$300(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->customViewTypefaceSupport:Z

    return v0
.end method

.method static synthetic access$400(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->mHasTypefaceClasses:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;)Lio/github/inflationx/calligraphy3/FontMapper;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    .prologue
    .line 142
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->fontMapper:Lio/github/inflationx/calligraphy3/FontMapper;

    return-object v0
.end method


# virtual methods
.method public addCustomStyle(Ljava/lang/Class;I)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    .locals 2
    .param p2, "styleResourceAttribute"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;I)",
            "Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/widget/TextView;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object p0

    .line 214
    :cond_1
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->mStyleClassMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addCustomViewWithSetTypeface(Ljava/lang/Class;)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->customViewTypefaceSupport:Z

    .line 223
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->mHasTypefaceClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    return-object p0
.end method

.method public build()Lio/github/inflationx/calligraphy3/CalligraphyConfig;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->isFontSet:Z

    .line 234
    new-instance v0, Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/calligraphy3/CalligraphyConfig;-><init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;Lio/github/inflationx/calligraphy3/CalligraphyConfig$1;)V

    return-object v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultFontPath(Ljava/lang/String;)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    .locals 1
    .param p1, "defaultFontAssetPath"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->isFontSet:Z

    .line 192
    iput-object p1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->fontAssetPath:Ljava/lang/String;

    .line 193
    return-object p0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontAttrId(I)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    .locals 0
    .param p1, "fontAssetAttrId"    # I

    .prologue
    .line 179
    iput p1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->attrId:I

    .line 180
    return-object p0
.end method

.method public setFontMapper(Lio/github/inflationx/calligraphy3/FontMapper;)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;
    .locals 0
    .param p1, "fontMapper"    # Lio/github/inflationx/calligraphy3/FontMapper;

    .prologue
    .line 228
    iput-object p1, p0, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->fontMapper:Lio/github/inflationx/calligraphy3/FontMapper;

    .line 229
    return-object p0
.end method
