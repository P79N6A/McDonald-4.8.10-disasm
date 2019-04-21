.class public abstract Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "DatabaseModel.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;,
        Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;
    }
.end annotation


# static fields
.field public static final TYPE_INTEGER:Ljava/lang/String; = "integer"

.field public static final TYPE_REAL:Ljava/lang/String; = "real"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBooleanForInt(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 110
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForeignKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;",
            ">;"
        }
    .end annotation
.end method

.method protected getIntForBoolean(Z)I
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getPrimaryKeyNames()[Ljava/lang/String;
.end method

.method protected getRelationValues(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "modelList":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;

    .line 123
    .local v0, "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "model":Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_1
    return-object v1

    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract getSelection()Ljava/lang/String;
.end method

.method public abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getValues()Landroid/content/ContentValues;
.end method

.method public abstract populateFromCursor(Landroid/database/Cursor;)V
.end method
