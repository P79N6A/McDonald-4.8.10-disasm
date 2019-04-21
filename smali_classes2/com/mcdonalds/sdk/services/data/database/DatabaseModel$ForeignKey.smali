.class public Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;
.super Ljava/lang/Object;
.source "DatabaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForeignKey"
.end annotation


# static fields
.field public static final RELATION_MANY_TO_MANY:I = 0x2

.field public static final RELATION_MANY_TO_ONE:I = 0x0

.field public static final RELATION_ONE_TO_ONE:I = 0x1


# instance fields
.field public columnNames:[Ljava/lang/String;

.field public referencedColumnNames:[Ljava/lang/String;

.field public referencedTableName:Ljava/lang/String;

.field public relationTableName:Ljava/lang/String;

.field public relationType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "referencedTableName"    # Ljava/lang/String;
    .param p3, "referencedColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    invoke-direct {p0, v0, p2, v1}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "referencedTableName"    # Ljava/lang/String;
    .param p3, "referencedColumnName"    # Ljava/lang/String;
    .param p4, "relationType"    # I
    .param p5, "relationTableName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 174
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    new-array v3, v2, [Ljava/lang/String;

    aput-object p3, v3, v0

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "referencedTableName"    # Ljava/lang/String;
    .param p3, "referencedColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    aput-object p3, v3, v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "referencedTableName"    # Ljava/lang/String;
    .param p3, "referencedColumnName"    # Ljava/lang/String;
    .param p4, "relationType"    # I
    .param p5, "relationTableName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 178
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "referencedTableName"    # Ljava/lang/String;
    .param p3, "referencedColumnNames"    # [Ljava/lang/String;

    .prologue
    .line 170
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "referencedTableName"    # Ljava/lang/String;
    .param p3, "referencedColumnNames"    # [Ljava/lang/String;
    .param p4, "relationType"    # I
    .param p5, "relationTableName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->columnNames:[Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedTableName:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->referencedColumnNames:[Ljava/lang/String;

    .line 185
    iput p4, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationType:I

    .line 186
    iput-object p5, p0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;->relationTableName:Ljava/lang/String;

    .line 187
    return-void
.end method
