1.创建索引
PUT /myindex

2.查询所有索引
GET /_cat/indices?v

3.查询节点健康,v就是展示详细数据的意思
GET /_cat/health?v

4.创建一个新文档
(/{index}/_doc/{id}, /{index}/_doc, or /{index}/_create/{id}).
// 会自动生成ID
POST  /myindex/_doc/
{
    "name":"张三"
}

// 自己定义ID
PUT /{index}/{type}/{id}
{
"field": "value",
...
}


该响应表明文档已经成功创建，该索引包括 _index 、 _type 和 _id 元数据， 以及一个新元素： _version 。
在 Elasticsearch 中每个文档都有一个版本号。当每次对文档进行修改时（包括删除）， _version 的值会递增。 在 处理冲突 中，我们讨论了怎样使用 _version 号码确保你的应用程序中的一部分修改不会覆盖另一部分所做的修改。

把文档编入索引
PUT /myindex/_doc/1?pretty
{
"name": "诸葛亮"
}


修改文档。底层是先删除旧的，再创建新的，或有固定的延迟1秒
POST /customer/_update/1?pretty
{
"doc": { "name": "Jane Doe", "age": 20 }
}

使用脚本更新：ctx._source引用源文档。
POST /customer/_update/1?pretty
{
"script" : "ctx._source.age += 5"
}

批处理，不能回滚。注意，对于delete操作，只需提供被删除文档的ID即可。
某个操作失败不会导致批量API执行中断，剩下的操作将继续执行。当_bulk API返回时，它将为每个操作提供一个状态(与发送操作的顺序相同)，以便检查某个特定操作是否失败。
POST /customer/_bulk?pretty
{"index":{"_id":"1"}}
{"name": "John Doe" }
{"index":{"_id":"2"}}
{"name": "Jane Doe" }






5.空搜索
GET /_search

6.Query DSL(ES特定语法检索)

查询索引中的全部数据：
GET /myindex/_search
{
    "query": { "match_all": {} },
    "from": 2,
    "size": 1,
    "_source": ["name"],
    "sort": { "name": { "order": "desc" } },
}

query字段表示这次查询的定义，其中match_all字段表示查询类型 – 匹配所有文档。
    1.除了query参数，还可以传递其他参数。下面例子中，我们传入一个size参数，设置返回条目数量:
    注意，如果没有指定size，默认为10。
    2.from指定从哪个位置开始，可以是0
    3.默认情况下，搜索结果中包含了完整的JSON文档(_source字段)，如果不希望返回源文档全部内容，可以设置要返回的字段。
    4.match等值查询: "query": { "match": {"name":"赵六"} }
    5.match_phrase匹配整个短语: "query": { "match_phrase": { "name": "赵" } }，类似于模糊查询
    6.布尔查询，将小查询组合成大查询。
        {
        "query": {
        "bool": {
        "must": [
        { "match": { "address": "mill" } },
        { "match": { "address": "lane" } }
        ]
        }
        }
        }
    7.must等同逻辑与。should等同逻辑或。must_not既不也不。
    8._score(分数)字段是衡量文档与搜索条件匹配程度的一个指标。分数越高，文档越相关，分数越低，文档越不相关。并不总是需要生成分数，需不需要Elasticsearch会自动判断，以避免计算无用的分数。
    布尔查询还支持filter子句，用于设置过滤条件。过滤条件不影响文档的相关性分数。
        "bool": {
        "must": { "match_all": {} },
        "filter": {
        "range": {
        "balance": {
        "gte": 20000,
        "lte": 30000
        }
        }
        }
        }
    9.聚合aggs
        注意，size=0表示不显示搜索结果，我们只想看到聚合结果。
        "size": 0,
        "aggs": {
        "group_by_state": {
        "terms": {
        "field": "state.keyword"
        }
        }
        }
        聚合还能嵌套
        GET /bank/_search
        {
        "size": 0,
        "aggs": {
        "group_by_state": {
        "terms": {
        "field": "state.keyword"
        },
        "aggs": {
        "average_balance": {
        "avg": {
        "field": "balance"
        }
        }
        }
        }
        }
        }




7.删除索引
DELETE /myindex?pretty




