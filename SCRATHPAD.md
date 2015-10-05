# My Scratchpad 

I have a scratchpad that I use for everyday use when doing a project.
I use this to take notes on the job at hand or write down several tasks.
As this is a take home test I think it important to include this as it 
shows my workflow. 

## THOUGHTS

I'm pondering doing this using PORO or using Rails... The former is
winning in my head at the minute.

When spiking something I usually commit THEN rebase afterwards. As
this is a take home test I am going to keep them in to show my workflow.
They can be easily identified with SPIKING in the commit history. 

### STAGING NOTE

        I was hacking about there and was going to use active_model:

        ```
          require 'active_model'
          require 'active_model/serializer'

          class StockSerializer < ActiveModel::Serializer
            attributes :id, :description, :price, :cost, :price_type, :quantity_on_hand
          end
        ```

        However I have been doing a few searches and came across this gem:

            https://github.com/apotonick/representable

        I am going to give this a go as I know if I was to do this in python I would
        use a decorator-esque method instead of django-rest-framework. 

### 443c497

	I've now pretty much finished the models section. Am happy enough
	with it. Think I might have went a bit overboard in having a 
	Currency attribute however my spidey sense tells me I will need it
	later. If I don't need it I can easily take it out.

	Now I have the models done I probably want to output them. I am
	tempted to dive straight into the import part but in my head at this
	time this is quite a well understood problem. I think I'll start
	to dive into the exporting.

### 3394b5f
	
	So I have decided to forget about rails. Not sure if this is a 
	good thing yet or not. Using virtus as it makes sense and I have
	some exposure to it.

	Honestly not sure if this is the right thing to do or not....
