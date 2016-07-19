# The Cost of Logging

## How we realised 

## Why we did it

* talk about NAP 
* Prior to pino, options weren't great

## Logging is hard

* Don't roll your own logger!
* Performance wise
* Architecturally
* Noise filtering

## Adapters of adapters of adapters

* Too many layers
* Too much complexity
* To high a cost of performance

## Newline Delimited JSON

* Everyone knows how to work with JSON
* It has become the logging standard

## Introducing Pino

* High speed logging - 10000 logs in 250ms
* Bunyan compatible interface
* Faster than other JSON loggers (winston, bunyan)
* Faster even, then non-JSON low-feature loggers (mithril, debug)


## Why Pino is fast

* not calling JSON.stringify
* flatstr
* fast-safe-stringify
* quick-format

## Making Pino even faster

* Extreme mode
* 10000 logs in 100ms
* 4k batching

## How we did it

* 0x
* tracing
* experience
* use common modules, then rewrite when they become bottleneck  

## Pino Philosophy

* Pino provides both high speed logging *and* recommends an approach to logging related actions
* Log rotation
* Transports
* Post-formatting (date, spacing, etc.)

## Server integration

* hapi-pino (code example)
* express-pino-logger (code example)
* restify-pino-logger (code example)
* koa-pino-logger (code example)
* pino-http (code example)

## ELK / Cloudwatch integration

* todo

## Ecosystem impact

* usage is growing
* apps/processes are speeding up essentially for free
* inspiring other projects (rvagg and bole)
* knowledge osmosis - approaches in pino and tools used for pino are being used in other projects (fast-safe-stringify hapi etc.)


