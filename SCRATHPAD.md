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

### 5f60a9e

        I SPIKED longer than I should have. However my TDD process was 
        still active as I was parsing the input.csv file given. Still
        not really proud of going down one path for so long. Think this
        would be my first big commit without any tests to prove that the
        solution works. Will fill out with proper specs now.

        I've recently used smarter_csv for a project of mine. So decided
        to bring it out for this. Activesupport is probably overkill
        as I could filter the hash like I am for the delete method but
        at the time I wasn't thinking about having to delete the modifier_x_x
        elements.

### fd91f50

        So adding multiple objects wasn't too hard. Just had to read the 
        documentation. Added a rudementary test to prove that it works.
        I am happy enough with the output now. All that is left to do is
        ensure that the input is correct.

	In order to do this I am going to SPIKE for a bit to get the feel 
	for the csv.

### e30d9e3

        I added two tests for the decorators. I will need to split out the
        decorator classes probably to keep things consistent. Am starting to 
        wonder about multiple stock items now. I have only been testing with
        one item at a time. This was rather short sighted of me. I'll fill out
        the details for the serializers now and then think about that. 

### ac5fbe0

        I think I am making the right choice in using representable, it
        *seems* to do what I want.

        I need to tie this back and add some tests now to prove it is
        exactly what I want.

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
