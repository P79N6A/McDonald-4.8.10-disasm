.class public final Lcom/ensighten/W;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/W$1;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public a:Lcom/ensighten/V;

.field public b:Ljava/lang/String;

.field public c:Landroid/widget/Adapter;

.field public d:Ljava/lang/String;

.field public e:Landroid/view/View;

.field public f:Landroid/app/Fragment;

.field public g:Landroid/support/v4/app/Fragment;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field private final l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/view/View;

.field private u:I

.field private v:Z

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Lcom/ensighten/W;->p:I

    .line 84
    iput v1, p0, Lcom/ensighten/W;->q:I

    .line 130
    iput-boolean v0, p0, Lcom/ensighten/W;->v:Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    .line 182
    iput v1, p0, Lcom/ensighten/W;->k:I

    .line 185
    iput-object p1, p0, Lcom/ensighten/W;->l:Landroid/content/Context;

    .line 186
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Landroid/app/Activity;

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    .line 191
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->r:Landroid/util/SparseArray;

    .line 192
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->s:Landroid/util/SparseArray;

    .line 193
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 674
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return v0

    .line 671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v2, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ensighten/W;->c:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/ensighten/W;->c:Landroid/widget/Adapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/ensighten/W;->r:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    if-eqz p1, :cond_0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ensighten/W;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 558
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 560
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v7, :cond_f

    .line 561
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 562
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 566
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 567
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 568
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_3

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 569
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 570
    const v2, -0x21524542

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 571
    const/4 v2, 0x1

    move-object v6, v5

    move v5, v2

    .line 576
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/ensighten/W;->a(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 577
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "]"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 579
    instance-of v2, v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    .line 580
    if-nez p3, :cond_6

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const v11, 0x1020002

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    if-eqz v5, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->w:Ljava/util/Map;

    const v10, 0x1020002

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "/"

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->y:Ljava/util/Map;

    const-string v10, "/"

    const v11, 0x1020002

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "[0"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "]"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 593
    const-class v2, Landroid/widget/AdapterView;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 594
    check-cast v2, Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 595
    if-eqz v2, :cond_1

    .line 596
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ensighten/W;->r:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 600
    :cond_1
    check-cast v3, Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/ensighten/W;->a(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v10, v2

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    if-eqz v5, :cond_2

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->w:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->y:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_0

    .line 568
    :cond_3
    invoke-static {}, Lcom/ensighten/Q;->a()I

    move-result v2

    goto/16 :goto_1

    .line 573
    :cond_4
    const v2, -0x21524542

    invoke-virtual {v3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object v6, v5

    move v5, v2

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    move-object v6, v5

    move v5, v2

    goto/16 :goto_2

    .line 610
    :cond_6
    const-class v2, Landroid/widget/AdapterView;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v3

    .line 611
    check-cast v2, Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 612
    if-eqz v2, :cond_7

    .line 613
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ensighten/W;->r:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v2, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 617
    :cond_7
    check-cast v3, Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/ensighten/W;->a(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    if-eqz v5, :cond_8

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->w:Ljava/util/Map;

    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->y:Ljava/util/Map;

    invoke-interface {v2, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 627
    :cond_9
    if-nez p3, :cond_d

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->t:Landroid/view/View;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->t:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 630
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ":/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v12, v3

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    if-eqz v5, :cond_a

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/W;->w:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "/"

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/W;->y:Ljava/util/Map;

    const-string v10, "/"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string p3, "/"

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v10, v2

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    if-eqz v5, :cond_b

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->w:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "[0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->y:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "[0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 629
    :cond_c
    const v2, 0x1020002

    goto/16 :goto_4

    .line 647
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    if-eqz v5, :cond_e

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->w:Ljava/util/Map;

    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/W;->y:Ljava/util/Map;

    invoke-interface {v2, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 656
    :cond_f
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 9403
    iget-boolean v0, v0, Lcom/ensighten/k;->c:Z

    .line 915
    if-nez v0, :cond_0

    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 10159
    iget-boolean v0, v0, Lcom/ensighten/M;->i:Z

    .line 915
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 691
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v0, v2

    .line 694
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 695
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v3, v1

    .line 697
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 698
    const-string v1, "mapKey=%s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 699
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 701
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 702
    const-string v7, "pathKey=%s value=0x%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v3, v1

    goto :goto_1

    .line 704
    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    .line 707
    :cond_3
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v1, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->j:Landroid/util/SparseArray;

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->B:Ljava/util/Map;

    .line 717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->C:Ljava/util/HashMap;

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v1, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v1, Lcom/ensighten/V;->e:Lcom/ensighten/V;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v1, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    move-object v1, v0

    .line 721
    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ensighten/W;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v2, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getId()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/ensighten/W;->u:I

    .line 724
    iget v0, p0, Lcom/ensighten/W;->u:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_6

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/ensighten/W;->u:I

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v2, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    if-ne v0, v2, :cond_7

    const-class v0, Landroid/app/Fragment;

    const-string v2, "mFragmentId"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 728
    :goto_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 729
    iget v2, p0, Lcom/ensighten/W;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/ensighten/W;->C:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/ensighten/W;->a(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lcom/ensighten/W;->j:Landroid/util/SparseArray;

    iget v2, p0, Lcom/ensighten/W;->u:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 734
    iget-object v1, p0, Lcom/ensighten/W;->B:Ljava/util/Map;

    iget v2, p0, Lcom/ensighten/W;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/ensighten/W;->t:Landroid/view/View;

    const v1, -0x54523502

    iget v2, p0, Lcom/ensighten/W;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    move-object v1, v0

    goto/16 :goto_1

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v0

    goto/16 :goto_2

    .line 725
    :cond_6
    invoke-static {}, Lcom/ensighten/Q;->a()I

    move-result v0

    goto/16 :goto_3

    .line 727
    :cond_7
    :try_start_1
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "mFragmentId"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_4

    .line 735
    :catch_0
    move-exception v0

    .line 736
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 773
    const/4 v1, 0x0

    .line 774
    iget-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    .line 775
    iget-object v2, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v3, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v2, v3, :cond_2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ensighten/W;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ensighten/W;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    :cond_0
    :goto_0
    :try_start_0
    const-string/jumbo v2, "viewId:android.R.id."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 783
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    iget-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 785
    if-eqz v0, :cond_9

    .line 786
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 788
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ensighten/M;->a:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 816
    :cond_1
    :goto_2
    return v0

    .line 778
    :cond_2
    iget-object v2, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v3, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    if-ne v2, v3, :cond_0

    .line 779
    iget-object v0, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    goto :goto_0

    .line 789
    :cond_3
    :try_start_2
    const-string v2, "eId:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 790
    iget-object v2, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 791
    iget-object v2, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 792
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/Utils;->decodeStringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 793
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 795
    :cond_4
    const-string v2, "resId:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 796
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/Utils;->decodeStringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 797
    :try_start_3
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ensighten/M;->a:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 811
    :catch_0
    move-exception v1

    .line 812
    :goto_3
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_2

    .line 798
    :cond_5
    :try_start_4
    const-string/jumbo v2, "viewId:R.id."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 799
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 800
    iget-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 801
    if-eqz v0, :cond_8

    .line 802
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    .line 804
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ensighten/M;->a:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 805
    :cond_6
    :try_start_6
    const-string/jumbo v2, "xPath:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 806
    iget-object v2, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 807
    iget-object v2, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 808
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    goto/16 :goto_2

    .line 811
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ensighten/W;->x:Ljava/util/Map;

    .line 501
    iget-object v0, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    .line 502
    iget-object v0, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ensighten/W;->y:Ljava/util/Map;

    .line 504
    iget-object v2, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/ensighten/W;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/ensighten/W;->a(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/ensighten/W;->y:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 8403
    iget-boolean v0, v0, Lcom/ensighten/k;->c:Z

    .line 511
    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ensighten/W;->c(Ljava/lang/String;)V

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ensighten/W;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ensighten/W;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8754
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8755
    iget-object v1, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 516
    :goto_0
    const-string/jumbo v1, "xPath:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/W;->a(Ljava/lang/String;)I

    move-result v0

    .line 517
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 518
    return-object v0

    .line 8760
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    .line 372
    const-string v1, "onResume"

    invoke-virtual {p0, v0, v1}, Lcom/ensighten/W;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 6415
    iget-boolean v0, v0, Lcom/ensighten/k;->e:Z

    .line 377
    if-eqz v0, :cond_3

    .line 6884
    iget-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6885
    if-eqz v0, :cond_3

    .line 6888
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v1

    .line 7403
    iget-boolean v1, v1, Lcom/ensighten/k;->c:Z

    .line 6888
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 6890
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 6891
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 6894
    :cond_2
    if-nez v1, :cond_1

    .line 6896
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 6898
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6902
    :cond_3
    :goto_0
    return-void

    .line 6899
    :catch_0
    move-exception v0

    .line 6900
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6901
    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 6904
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6905
    if-eqz v1, :cond_3

    .line 6906
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6907
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 964
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    .line 965
    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    .line 968
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 234
    invoke-static {}, Lcom/ensighten/W;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "View processing is disabled."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-nez p1, :cond_2

    .line 241
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "The class is null during view processing."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    if-nez p2, :cond_4

    .line 247
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_1
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "The method is null for class %s during view processing."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    const-string v0, "null"

    goto :goto_1

    .line 253
    :cond_4
    invoke-static {}, Lcom/ensighten/Ensighten;->isPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "View not processed due to privacy mode."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_5
    invoke-static {}, Lcom/ensighten/Ensighten;->isBatteryKillEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "View not processed due to battery kill being enabled."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_6
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 2869
    iget-object v0, v0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 265
    :goto_2
    if-nez v0, :cond_8

    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v0

    .line 3403
    iget-boolean v0, v0, Lcom/ensighten/k;->c:Z

    .line 265
    if-nez v0, :cond_8

    .line 266
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "View not processed due to invalid optimization config and not being in dump mode."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2869
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 271
    :cond_8
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 3881
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ensighten/M;->j:Z

    .line 3882
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ensighten/M;->k:Z

    .line 273
    const-string v0, "onCreate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->d:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->c:Landroid/widget/Adapter;

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/W;->p:I

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/ensighten/W;->q:I

    .line 282
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->r:Landroid/util/SparseArray;

    .line 283
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/W;->s:Landroid/util/SparseArray;

    .line 286
    :cond_9
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_13

    .line 287
    sget-object v0, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    .line 304
    :goto_3
    iget-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v1, Lcom/ensighten/V;->h:Lcom/ensighten/V;

    if-eq v0, v1, :cond_0

    .line 305
    sget-object v0, Lcom/ensighten/W$1;->a:[I

    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    invoke-virtual {v1}, Lcom/ensighten/V;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_4
    iput-object p2, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 354
    if-eqz v5, :cond_0

    .line 4390
    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v2, Lcom/ensighten/V;->c:Lcom/ensighten/V;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v2, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    if-ne v1, v2, :cond_1e

    .line 4391
    :cond_a
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4392
    const-string v1, "The %s type is not supported when determining paths."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 4393
    :cond_b
    const/4 v1, 0x0

    move-object v2, v1

    .line 356
    :goto_5
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v3

    .line 5403
    iget-boolean v1, v3, Lcom/ensighten/k;->c:Z

    .line 357
    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    .line 6023
    iget-boolean v1, v1, Lcom/ensighten/V;->i:Z

    .line 357
    if-eqz v1, :cond_12

    const-string v1, "onResume"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 358
    iget-object v4, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    .line 6177
    if-nez v0, :cond_c

    iget-boolean v8, v3, Lcom/ensighten/k;->c:Z

    if-eqz v8, :cond_12

    .line 6180
    :cond_c
    iget-object v8, v3, Lcom/ensighten/k;->g:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    iget-object v8, v3, Lcom/ensighten/k;->g:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    .line 6181
    :goto_6
    if-nez v1, :cond_d

    sget-object v1, Lcom/ensighten/V;->e:Lcom/ensighten/V;

    if-eq v6, v1, :cond_d

    sget-object v1, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    if-ne v6, v1, :cond_e

    .line 6182
    :cond_d
    sget-object v1, Lcom/ensighten/k$2;->a:[I

    invoke-virtual {v6}, Lcom/ensighten/V;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_1

    .line 6193
    :cond_e
    :goto_7
    iget-object v1, v3, Lcom/ensighten/k;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6194
    iput-object v5, v3, Lcom/ensighten/k;->j:Landroid/view/View;

    .line 6195
    iput-object v2, v3, Lcom/ensighten/k;->k:Landroid/view/ViewGroup;

    .line 6196
    iget-boolean v1, v3, Lcom/ensighten/k;->l:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v3, Lcom/ensighten/k;->f:Z

    if-nez v1, :cond_11

    .line 6197
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/ensighten/k;->l:Z

    .line 6198
    new-instance v1, Lcom/ensighten/k$1;

    invoke-direct {v1, v3, v0, v4, v7}, Lcom/ensighten/k$1;-><init>(Lcom/ensighten/k;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v3, Lcom/ensighten/k;->m:Ljava/lang/Runnable;

    .line 6261
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6262
    const-string v1, "EnsightenInstrumentation:UIThreadScheduling"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/ensighten/j;->a(Ljava/lang/String;J)V

    .line 6264
    :cond_10
    iget-boolean v1, v3, Lcom/ensighten/k;->f:Z

    if-eqz v1, :cond_3b

    .line 6265
    iget-object v1, v3, Lcom/ensighten/k;->b:Landroid/os/Handler;

    iget-object v2, v3, Lcom/ensighten/k;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6270
    :cond_11
    :goto_8
    iget-object v1, v3, Lcom/ensighten/k;->o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 360
    :cond_12
    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v1

    iget-object v2, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/ensighten/M;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_13
    instance-of v0, p1, Landroid/widget/Adapter;

    if-eqz v0, :cond_14

    .line 289
    sget-object v0, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 290
    :cond_14
    instance-of v0, p1, Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_15

    .line 291
    sget-object v0, Lcom/ensighten/V;->c:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 292
    :cond_15
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_16

    .line 293
    sget-object v0, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 294
    :cond_16
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_17

    .line 295
    sget-object v0, Lcom/ensighten/V;->e:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 296
    :cond_17
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_18

    .line 297
    sget-object v0, Lcom/ensighten/V;->f:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 298
    :cond_18
    instance-of v0, p1, Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_19

    .line 299
    sget-object v0, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 301
    :cond_19
    sget-object v0, Lcom/ensighten/V;->h:Lcom/ensighten/V;

    iput-object v0, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    goto/16 :goto_3

    .line 307
    :pswitch_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ensighten/W;->a(Landroid/app/Activity;)V

    move-object v0, p0

    .line 345
    :goto_9
    iget-object v1, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_a
    iput-object v0, v1, Lcom/ensighten/W;->m:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    move-object v0, p1

    .line 311
    check-cast v0, Landroid/app/Fragment;

    iput-object v0, p0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    move-object v1, p0

    .line 315
    goto :goto_a

    .line 317
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    move-object v0, p1

    .line 318
    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    move-object v1, p0

    .line 321
    goto :goto_a

    :pswitch_3
    move-object v0, p1

    .line 323
    check-cast v0, Landroid/widget/Adapter;

    iput-object v0, p0, Lcom/ensighten/W;->c:Landroid/widget/Adapter;

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ensighten/W;->p:I

    .line 325
    iget-object v0, p0, Lcom/ensighten/W;->s:Landroid/util/SparseArray;

    iget v1, p0, Lcom/ensighten/W;->p:I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/ensighten/W;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :cond_1a
    iput v0, p0, Lcom/ensighten/W;->q:I

    .line 329
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/W;->d:Ljava/lang/String;

    .line 330
    const-string v0, "%s[%d]:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ensighten/W;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/ensighten/W;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    .line 331
    goto :goto_a

    .line 333
    :pswitch_5
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 334
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v2, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 337
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "Inflater class %s does not match expected class %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :cond_1b
    iget-object v2, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "onCreateView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 341
    :cond_1c
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "Inflater class %s does not match expected class %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/ensighten/W;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :cond_1d
    iget-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/ensighten/W;->h:Ljava/lang/String;

    move-object v1, p0

    goto/16 :goto_a

    .line 4396
    :cond_1e
    const/4 v2, 0x0

    .line 4397
    const/4 v3, 0x0

    .line 4399
    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v4, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v1, v4, :cond_22

    .line 4400
    iget-object v1, p0, Lcom/ensighten/W;->e:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_20

    const/4 v2, 0x1

    .line 4401
    :goto_b
    if-eqz v2, :cond_21

    const/4 v1, 0x0

    :goto_c
    move v4, v2

    move-object v3, v1

    .line 4417
    :goto_d
    if-nez v3, :cond_26

    if-nez v4, :cond_26

    .line 4418
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4419
    const-string v1, "The current view is an adapter row view, skipping path determination."

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 4420
    :cond_1f
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_5

    .line 4400
    :cond_20
    const/4 v2, 0x0

    goto :goto_b

    .line 4401
    :cond_21
    iget-object v1, p0, Lcom/ensighten/W;->e:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_c

    .line 4402
    :cond_22
    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v4, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    if-ne v1, v4, :cond_23

    .line 4403
    iget-object v1, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 4404
    if-eqz v1, :cond_3d

    .line 4405
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_e
    move v4, v3

    move-object v3, v1

    .line 4407
    goto :goto_d

    :cond_23
    iget-object v1, p0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    if-eqz v1, :cond_24

    .line 4408
    iget-object v1, p0, Lcom/ensighten/W;->f:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ensighten/W;->t:Landroid/view/View;

    .line 4409
    iget-object v1, p0, Lcom/ensighten/W;->t:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    move v4, v3

    move-object v3, v1

    goto :goto_d

    .line 4410
    :cond_24
    iget-object v1, p0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_25

    .line 4411
    iget-object v1, p0, Lcom/ensighten/W;->g:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ensighten/W;->t:Landroid/view/View;

    .line 4412
    iget-object v1, p0, Lcom/ensighten/W;->t:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    move v4, v3

    move-object v3, v1

    goto :goto_d

    .line 4414
    :cond_25
    const/4 v1, 0x0

    move v4, v3

    move-object v3, v1

    goto :goto_d

    .line 4423
    :cond_26
    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 4424
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4425
    const-string v1, "The current class is null, skipping path determination."

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 4426
    :cond_27
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_5

    .line 4429
    :cond_28
    iget-object v1, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_f
    iput-boolean v1, p0, Lcom/ensighten/W;->v:Z

    .line 4430
    const/4 v1, 0x0

    .line 4431
    iget-object v2, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v6, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v2, v6, :cond_33

    .line 4432
    iget-object v1, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    const-string v2, "getView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .line 4439
    :goto_10
    invoke-direct {p0}, Lcom/ensighten/W;->d()V

    .line 4441
    if-eqz v4, :cond_35

    const/4 v1, -0x1

    .line 4442
    :goto_11
    iget-object v6, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    iget-object v7, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    if-gtz v1, :cond_2b

    :cond_29
    iget-boolean v1, p0, Lcom/ensighten/W;->v:Z

    if-nez v1, :cond_2a

    if-eqz v4, :cond_31

    :cond_2a
    if-eqz v2, :cond_31

    .line 4444
    :cond_2b
    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v6, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v1, v6, :cond_2c

    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v6, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v1, v6, :cond_2f

    iget-object v1, p0, Lcom/ensighten/W;->s:Landroid/util/SparseArray;

    iget v6, p0, Lcom/ensighten/W;->p:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 4445
    :cond_2c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ensighten/W;->x:Ljava/util/Map;

    .line 4446
    iget-object v1, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    iget-object v6, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    .line 4447
    iget-object v1, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/ensighten/W;->v:Z

    if-eqz v1, :cond_2e

    if-eqz v2, :cond_2e

    .line 4448
    :cond_2d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    .line 4450
    :cond_2e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ensighten/W;->y:Ljava/util/Map;

    .line 4452
    iget-object v1, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v2, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    if-ne v1, v2, :cond_2f

    .line 4453
    iget-object v1, p0, Lcom/ensighten/W;->s:Landroid/util/SparseArray;

    iget v2, p0, Lcom/ensighten/W;->p:I

    iget v6, p0, Lcom/ensighten/W;->q:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4457
    :cond_2f
    if-eqz v4, :cond_39

    .line 4525
    iget-object v4, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    .line 4526
    iget-object v6, p0, Lcom/ensighten/W;->e:Landroid/view/View;

    .line 4528
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 4532
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4533
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_37

    .line 4534
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_36

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    :goto_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4535
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setId(I)V

    .line 4536
    const v1, -0x21524542

    invoke-virtual {v6, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4537
    const/4 v1, 0x1

    .line 4542
    :goto_13
    iget v6, p0, Lcom/ensighten/W;->k:I

    .line 4543
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4546
    iget-object v7, p0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v8, v4

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4547
    if-eqz v1, :cond_30

    .line 4548
    iget-object v1, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4550
    :cond_30
    iget-object v1, p0, Lcom/ensighten/W;->y:Ljava/util/Map;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4463
    :goto_14
    iget-object v1, p0, Lcom/ensighten/W;->z:Ljava/util/Map;

    iget-object v2, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/ensighten/W;->x:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4464
    iget-object v1, p0, Lcom/ensighten/W;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/ensighten/W;->w:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4465
    iget-object v1, p0, Lcom/ensighten/W;->A:Ljava/util/Map;

    iget-object v2, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/ensighten/W;->y:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4467
    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ensighten/W;->c(Ljava/lang/String;)V

    :cond_31
    move-object v2, v3

    .line 4469
    goto/16 :goto_5

    .line 4429
    :cond_32
    const/4 v1, 0x0

    goto/16 :goto_f

    .line 4433
    :cond_33
    iget-object v2, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v6, Lcom/ensighten/V;->a:Lcom/ensighten/V;

    if-eq v2, v6, :cond_34

    .line 4435
    iget-object v2, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v6, Lcom/ensighten/V;->d:Lcom/ensighten/V;

    if-eq v2, v6, :cond_34

    iget-object v2, p0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    sget-object v6, Lcom/ensighten/V;->e:Lcom/ensighten/V;

    if-ne v2, v6, :cond_3c

    .line 4436
    :cond_34
    iget-object v1, p0, Lcom/ensighten/W;->n:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    goto/16 :goto_10

    .line 4441
    :cond_35
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto/16 :goto_11

    .line 4534
    :cond_36
    invoke-static {}, Lcom/ensighten/Q;->a()I

    move-result v1

    goto/16 :goto_12

    .line 4539
    :cond_37
    const v1, -0x21524542

    invoke-virtual {v6, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto/16 :goto_13

    :cond_38
    const/4 v1, 0x0

    goto/16 :goto_13

    .line 4460
    :cond_39
    iget-object v1, p0, Lcom/ensighten/W;->m:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ensighten/W;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/ensighten/W;->a(Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_14

    .line 6180
    :cond_3a
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 6185
    :pswitch_6
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6186
    if-eqz v1, :cond_e

    move-object v2, v1

    .line 6187
    goto/16 :goto_7

    .line 6267
    :cond_3b
    iget-object v1, v3, Lcom/ensighten/k;->b:Landroid/os/Handler;

    iget-object v2, v3, Lcom/ensighten/k;->m:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    :cond_3c
    move v2, v1

    goto/16 :goto_10

    :cond_3d
    move-object v1, v2

    goto/16 :goto_e

    :cond_3e
    move-object v0, p0

    goto/16 :goto_9

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6182
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 826
    const/4 v1, 0x0

    .line 828
    :try_start_0
    const-string v0, "resId:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/Utils;->decodeStringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 843
    :cond_0
    :goto_0
    return v1

    .line 831
    :cond_1
    const-string/jumbo v0, "xPath:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-object v2, p0, Lcom/ensighten/W;->B:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 835
    iget-object v2, p0, Lcom/ensighten/W;->B:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 841
    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    invoke-static {}, Lcom/ensighten/i;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 974
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/W;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method
