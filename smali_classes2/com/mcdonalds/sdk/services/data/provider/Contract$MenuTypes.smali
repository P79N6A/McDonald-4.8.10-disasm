.class public final Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/provider/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuTypes"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "menu_types"

    .line 134
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_URI:Landroid/net/Uri;

    .line 140
    const-string v0, "%s/%s_%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "vnd.android.cursor.dir"

    aput-object v2, v1, v3

    sget-object v2, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    const-string v2, "menu_types"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_TYPE:Ljava/lang/String;

    .line 147
    const-string v0, "%s/%s_%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "vnd.android.cursor.item"

    aput-object v2, v1, v3

    sget-object v2, Lcom/mcdonalds/sdk/services/data/provider/Contract;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    const-string v2, "menu_types"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
