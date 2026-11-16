---
layout: course-subpage
title: "Lab 5: Data Visualization with Vega-Lite"
---

{:.callout .note}
This lab assumes that you have worked through the lecture notes and in-class activity for [Data visualization with Vega-Lite](../../../coursenotes/16-data-vis/).

This lab will give you practice making data visualizations to help make sense of large datasets.

The lab asks you to create visualizations in the [Vega Online Editor](https://vega.github.io/editor/).  You will export three URLs, one per Part of this lab. _Make sure to save those URLs in a note on your computer as you complete each part, so you're able to submit your work_.

## Part 1

You have a choice about the domain about which you want to make your visualisations.

You can choose from the following datasets:

- [Moderate or significant earthquakes since 1940](https://gist.githubusercontent.com/ayaankazerouni/75e9764b762446d449f0e68b4ae416a0/raw/4d9d68f08055d18f3d3f0d74948944ef8ad45cdc/earthquakes-depth.json)
- [House prices and construction permits since 2011](https://gist.githubusercontent.com/ayaankazerouni/6c87dab8604b1f4d33c636477ccd5d8a/raw/35c26852dff4ab2d5bedcc495697a43689df76c5/construction_permits.json)

Take some time to study these datasets.
Each one contains  an _array_ of _objects_.

For example, in the **earthquakes** dataset, each object is a single earthquake. It holds information about the following fields:

* `year`: the year in which the earthquake occurred
* `month`: the month in which the earthquake occurred
* `magnitude`: the magnitude of the earthquake on a scale from 1–10
* `numStations`: the number of seismic stations involved in detecting the earthquake
* `location`: the location of the earthquake

The first object in this dataset is:

```json
{
  "year": "2022",
  "month": "Aug",
  "magnitude": 6.3,
  "numStations": 150.0,
  "location": "Pacific-Antarctic Ridge"
}
```

In the **construction** dataset, each object contains the new housing permits that were granted in a US given state in a particular month. It has the following fields:

* `month`: the month in which permits were granted
* `year`: the year in which the permits were granted
* `state`: the name of the US state
* `numSingleUnitPermits`: the number of single-unit permits (single-family homes) that were granted that month
* `numFivePlusUnitPermits`: the number of permits for larger constructions (like builds of many condos as opposed to a house) that were granted that month
* `singleUnitValuationsK`: the estimated total value of all the single-unit constructions that month, in thousands of dollars
* `fivePlusUnitsValuationsK`: the estimated total value of all the 5+-unit constructions that month, in thousands of dollars

The first object in this dataset is:

```json
{
	"state": "Mississippi",
	"numSingleUnitPermits": 286,
	"numFivePlusUnitPermits": 16,
	"month": "January",
	"year": 2011,
	"singleUnitValuationsK": 43160,
	"fivePlusUnitsValuationsK": 1010
}
```

Both these datasets have all the kinds of data that we talked about in class:

* The earthquake `magnitude` and the `singleUnitValuationsK` are examples of `quantitative` data.
* The earthquake `location` and the `state` of the construction permits are examples of `nominal` data.
* The `month` field in both datasets is an example of `ordinal` data. Indeed, the year is also an example of `ordinal` data—just because we use numbers to represent years doesn’t mean that it is quantitative!

In this lab we’re going to use these datasets to make interesting charts.

Use the following code as your starting point:

```json
{
  "$schema": "https://vega.github.io/schema/vega-lite/v5.json",
  "data": {

  },
  "mark": {

  },
  "encoding": {
    "x": {

    },
    "y": {

    }
  }
}
```

We will now be working with the datasets described above, so we need to point our chart to the appropriate data source.
Since the earthquakes dataset and the construction permits dataset each have thousands of records, it’s not feasible to write out the records in the chart editor itself like we did in class.

Modify the `data` field so that it looks like this:

```json
"data": {
  "url": "choose a dataset above and paste its URL here"
}
```

Instead of pointing to a manually constructed list of records, we’re now pointing to data that’s available online.

### Main task

Make a bar chart that with the following:

- the `x` axis should have the `year` as an ordinal field
- the `y` axis should display a quantitative field. If you use the earthquake dataset, display the _total number of earthquakes_ in the given year. If you use the construction permits dataset, display the _total number of single-unit permits_ issued in the given year.

Let’s talk a bit more about the `y` axis. Depending on the dataset you choose to use, this visual channel will display a different field.

Whichever dataset we work with, our data is not quite ready in its current form. Specifically,

- In the earthquakes dataset, each object is a single earthquake. To get the number of earthquakes in a given year, we would need to `count` the number of records.
- In the construction permits dataset, each object is a single month. To get the total number of single-unit permits given in a year, we would need to `sum` up the numSingleUnitPermits values for the given year.

Vega-Lite provides the ability to display fields in aggregate. For example, you can compute summary statistics (min, max, mean, median, etc.) or other simpler values such as count and sum.

When you specify the `y` axis in the encoding, give it the following. Placeholder values that need to be replaced by you are shown in `<angle brackets>`.

```json
"encoding": {
  "x": {
     ...assumed that you've given it the "year" field
   },
   "y": {
     "aggregate": <"count" or "sum">
     "field": <"The field on which you want to apply the aggregation">,
     "type": <"quantitative, ordinal, or nominal---what kind of data is depicted?">
   }
}
```

{:.callout .note}
**For the earthquake dataset:**
\
Since the earthquake dataset covers years from 1940 onward, when you’re finished you’ll end up with a very *wide* chart.
If you prefer, you can swap the `x` and `y` encodings, so that years appear on the vertical axis instead, and you scroll up and down instead of side-to-side to see the full thing.

### Exporting for submission 

1. Click the "Share" button and then "Copy Link to Clipboard".
2. Save the link somewhere. **It will not be accessible after you move on to part 2!**

## Part 2

Now that you’ve had some experience playing with Vega-Lite, let’s make a slightly more complex visualisation using another dataset.

This new dataset contains information about cats sheltered by the Cal Poly Cat Program, a local no-kill cat shelter.

The dataset is at the following URL:

- [Cal Poly Cat Program data](https://gist.githubusercontent.com/ayaankazerouni/b760d0b26460d0d95d6b02e85d83cca7/raw/410eea50b2ebc97d99f8aed8a09018443793eb8d/cat-program.json)

This is an example record from the dataset.

```json
{
  "name":"Mystic",
  "sex":"M",
  "description":"orange",
  "upForAdoption":true,
  "arrivalDate":"2018-02-07",
  "arrivalDetails":"Feral but was injured.",
  "healthIssues":"Was shot in the front left leg with a BB gun. He was treated by putting a pin in the fracture, but it did not work, so they ultimately amputated the leg.",
  "isMicrochipped":true,
  "fleaControl":"2018-02-07",
  "dewormingDate":"2018-02-07",
  "fivFelvDate":"2018-02-20",
  "birthday":"2013-11-07"
}
```

Most of the fields are self-explanatory, but here are descriptions of some that may be unclear:

- `upForAdoption`: `true` if the cat can be adopted, `false` if the cat cannot be adopted and is staying at the shelter permanently.
- `arrivalDetails`: free-form text describing the circumstances under which the cat arrived at the shelter.
- `healthIssues`: A string describing health issues, or `null` if the cat has no health issues. Note that `null` may also mean that the CPCP did not receive the cat’s health records.
- `fivFelvDate`: The date on which the cat was tested for the Feline Immunodeficiency Virus (FIV) and the Feline Leukemia Virus (FeLV).

### A quick note about “temporal” data

Notice that the dataset has a number fields that are dates. For example, the following fields are all dates:

- `birthday` 
- `arrivalDate` 
- `dewormingDate` 
- `fivFelvDate` 

In our last class, we talked about dates as being a "compound" type of data that isn’t easily thought of as quantitative, nominal, or ordinal.
Instead, it’s made up of numbers (or words) representing the year, month, and day (or perhaps even more fine-grained units like hours, minutes, and seconds).

However, dates are such a commonly used data type that Vega-Lite allows us to specify fields as being *temporal* fields (i.e., having to do with time).
That is, in Vega, `temporal` is another type of data just like quantitative, nominal, and ordinal.
We’ll take advantage of this in our next chart.

### Main task

Go back to your Vega online editor, and start with the following code:

```json
{
  "$schema": "https://vega.github.io/schema/vega-lite/v5.json",
  "data": {
    "url": "https://gist.githubusercontent.com/ayaankazerouni/b760d0b26460d0d95d6b02e85d83cca7/raw/410eea50b2ebc97d99f8aed8a09018443793eb8d/cat-program.json"
  },
  "mark": {
    "type": "point"
  }
}
```

Once again, you’ll see a single point on screen—one for each record in the dataset.

Create a chart with the following visuals:

- The `x` axis should depict the cat’s `birthday`, encoded as a temporal field.
- The `y` axis should depict the cat’s `arrivalDate`, encoded as a temporal field.
- The `color` of each point should depict the cat’s `upForAdoption` status. What type should this field be?
- The `shape` of each point should depict the cat’s `sex`. What type should this field be? Note that we're not looking for _TypeScript's_ data types here; we're looking for _Vega-Lite's_ broader type categories.

### Export for submission

1. Once again, click Export, and copy the URL to your clipboard.
2. Save the URL somewhere.

## Part 3

In this part, you will create a figure of your own design using what you have learned.

1. First, using pen and paper, sketch out a visualization you'd like to create. **It's okay to keep it simple.** Choose a small scope of variables from the dataset, and think about how you would depict a relationship between them (if any).
2. Implement your visualization in Vega-Lite. **Please ask me or your neighbour for assistance or feedback as you go.**
3. Export the URL like you did for Parts 1 and 2.

## Final submission

To submit this lab, turn in all three URLs in Canvas. For Part 3, include a brief description of what you aimed to portray with your visualization.
