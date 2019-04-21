.class public final Lcom/facebook/stetho/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I

.field public static abc_action_bar_embed_tabs_pre_jb:I

.field public static abc_action_bar_expanded_action_views_exclusive:I

.field public static abc_config_actionMenuItemAllCaps:I

.field public static abc_config_allowActionMenuItemTextWithIcon:I

.field public static abc_config_showMenuShortcutsWhenKeyboardPresent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1138
    const v0, 0x7f070002

    sput v0, Lcom/facebook/stetho/R$bool;->abc_action_bar_embed_tabs:I

    .line 1139
    const/high16 v0, 0x7f070000

    sput v0, Lcom/facebook/stetho/R$bool;->abc_action_bar_embed_tabs_pre_jb:I

    .line 1140
    const v0, 0x7f070003

    sput v0, Lcom/facebook/stetho/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    .line 1141
    const v0, 0x7f070004

    sput v0, Lcom/facebook/stetho/R$bool;->abc_config_actionMenuItemAllCaps:I

    .line 1142
    const v0, 0x7f070001

    sput v0, Lcom/facebook/stetho/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    .line 1143
    const v0, 0x7f070005

    sput v0, Lcom/facebook/stetho/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
