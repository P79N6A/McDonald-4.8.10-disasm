.class Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;
.super Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    .local p2, "parts":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const-string v1, "appendable"

    invoke-static {p1, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "parts"

    invoke-static {p2, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "part":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-virtual {v1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 308
    .end local v0    # "part":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 310
    .restart local v0    # "part":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->access$100(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 312
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-virtual {v1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 315
    .end local v0    # "part":Ljava/lang/Object;
    :cond_2
    return-object p1
.end method
