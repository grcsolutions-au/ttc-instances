# ttc-instances

[Textual Type Classes][1] I think is a good library for defining how types which can be represented as text are [parsed][2] and [rendered][3].

You get polymorphic parsing and rendering over the most commonly used text types in the Haskell ecosystem basically for free.

To use these instances you need to define [Parse][2] and/or [Render][3] instances for your type.

The sublibraries in this repository provide instances intended to be used using `deriving via` for these classes:

1. From [`http-api-data`][4]:  [`ToHttpApiData`][5] and [`FromHttpApiData`][6]
2. From [`openapi3`][7], [`ToParamSchema`][8], but only for types which are [`Enum`erable][9] and [`Bounded`][10]
3. From [`autodocodec`][11], [`HasCodec`][12], but only for types which are [`Enum`erable][9], and [`Bounded`][10]

[1]: https://hackage.haskell.org/package/ttc
[2]: https://hackage.haskell.org/package/ttc/docs/Data-TTC.html#t:Parse
[3]: https://hackage.haskell.org/package/ttc/docs/Data-TTC.html#t:Render
[4]: https://hackage.haskell.org/package/http-api-data
[5]: https://hackage.haskell.org/package/http-api-data/docs/Web-HttpApiData.html#t:ToHttpApiData
[6]: https://hackage.haskell.org/package/http-api-data/docs/Web-HttpApiData.html#t:FromHttpApiData
[7]: https://hackage.haskell.org/package/openapi3
[8]: https://hackage.haskell.org/package/openapi3/docs/Data-OpenApi-ParamSchema.html#t:ToParamSchema
[9]: https://hackage.haskell.org/package/base/docs/Prelude.html#t:Enum
[10]: https://hackage.haskell.org/package/base/docs/Prelude.html#t:Bounded
[11]: https://hackage.haskell.org/package/autodocodec
[12]: https://hackage.haskell.org/package/autodocodec/docs/Autodocodec.html#t:HasCodec
