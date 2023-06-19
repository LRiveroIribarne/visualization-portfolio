MGI visualization portfolio 19-06-2023

Lucas Rivero Iribarne

For my visualization portfolio I added a portfolio section in my [personal web page](https://www.lucasriveroiribarne.com/). I wrote two blog style articles. One exploring the relationship between rainfall and evapotranspiration in a rainfed vineyard using open remote sensing evapotranspiration data and in situ measured precipitation. This one corresponds to the **static figure**. For the **interactive figure** I wrote a small article about the potential soil erosion model (RUSLE) and how a before and after fire situation change the potential soil loss in a watershed dominated by industrial pine plantations in central Chile.

Although the objectives and metadata are presented in the articles, hereafter I summarize the target people, purpose and process, the objectives of the maps and the metadata.

1. **Static figure -\>** [**LINK**](https://www.lucasriveroiribarne.com/portfolio_content/static/)

**People, purpose, and process:**

| **People** | Vineyard farmers interested in quantifying their water requirements and soil and plant scientists interested in understanding the drivers of evapotranspiration (ET) |
| --- | --- |
| **Purpose** | Show how rainfall and evapotranspiration are related and how different amounts of rain modify the evapotranspiration rate at plot scale in a Mediterranean rainfed vineyard.
Use open access remote sensing data and in situ measured meteorological variables to estimate the evapotranspiration. |
| **Process** | Gather the data from open repositories. [Agrometeorologia.cl](https://agrometeorologia.cl/) for precipitation and google earth engine for [PML Evapotranspiration](https://developers.google.com/earth-engine/datasets/catalog/CAS_IGSNRR_PML_V2_v017).
Analyze the data and develop figures using R programming language to show the precipitation in the study area, the accumulated evapotranspiration for a dry and wet year and the variation in ET throughout the year.
Conclude on the results and give some recommendations on how to improve the methodologies. |

**Objective of the maps:**

**Figure 1: Study area**

Show where the study was done. And show the localization of sensors and the resolution of the evapotranspiration product used.

**Figure 4:**

Show the accumulated evapotranspiration by year to give a rough estimation of the vineyard agrosystem water requirements for a dry and a wet year. Also show that the used product had a coarse spatial resolution.

**Figure 2 and 3 (Non maps):**

Support the selection of years and show the temporal variation of evapotranspiration throughout the year.

**Meta data**

| **Sources** |
1. **Yearly precipitation:**
 "Instituto de investigaciones agropecuarias (INIA)" [**weather stations web platform**](https://agrometeorologia.cl/)

1. **Penman-Monteith-Leuning Evapotranspiration V2:**
Zhang, Y., Kong, D., Gan, R., Chiew, F.H.S., McVicar, T.R., Zhang, Q., and Yang, Y., 2019. Coupled estimation of 500m and 8-day resolution global evapotranspiration and gross primary production in 2002-2017. Remote Sens. Environ. 222, 165-182, [doi:10.1016/j.rse.2018.12.031](https://doi.org/10.1016/j.rse.2018.12.031)And located in[**google earth engine catalog**](https://developers.google.com/earth-engine/datasets/catalog/CAS_IGSNRR_PML_V2_v017#citations)

 |
| --- | --- |
| **Map maker** | Lucas Rivero Iribarne |
| **Hosted in** | **https://www.lucasriveroiribarne.com/portfolio\_content/static/** |
| **Course name and code for which the geo visualization product was prepared.**
 | I wrote the blog post for the visualization portfolio using tools learnt through the MSc.
Geospatial data handling: Geoscripting (GRS33806)Data visualization and map story telling: GIS in context (GRS34306) |
| **Description of the application of the product**
 | **Two levels of application:** 1st as source of information on vineyard water consumption for interested groups of people such as farmers, agronomists, or scientists. They could use the document to understand how their plants could respond in dry and wet years.
2nd People interested in the methodology can check the repository to replicate the analysis in a different study area to quantify the evapotranspiration in either vineyard agrosystems or different crops or natural ecosystems. |
| **Reflection on the alignment of people, purpose, process components. What works and what could you do differentiy. Provide motivation for choice of visualization type.**

 | In my opinion the blog entrance is useful to understand on the one hand the water consumption at plot level by vineyards in Mediterranean ecosystems. But on the other hand, it is also useful to know how we can use open access remote sensing data to study the earth surface processes.
Both the non-technical and technical users could get insights from the text, figures, and GitHub repository.
Even though the methodology worked, and the results looked logical, the evapotranspiration product was too coarse and that is shown in figure 4. For the next exercise I would like to explore different ET products. But the ET products whit higher spatial resolution usually are time consuming to implement ([METRIC](https://www.sciencedirect.com/science/article/pii/S1470160X22000243)) or they are constrained to specific regions ([openET](https://developers.google.com/earth-engine/datasets/catalog/OpenET_ENSEMBLE_CONUS_GRIDMET_MONTHLY_v2_0)) |

1. **Interactive figure -\>** [**LINK**](https://www.lucasriveroiribarne.com/portfolio_content/interactive/)

**People, purpose, and process:**

| **People** | Decision makers who need to quantify potential soil erosion to plan resources management practices and territory planning |
| --- | --- |
| **Purpose** | Develop a web application showing the results of RUSLE model and deploy it in a google earth engine app. Also, create a Jupyter Notebook in google Collaboratory tutorial to calculate RUSLE potential soil erosion using open access data. |
| **Process** | Gather rainfall, soil, elevation, spectral and landcover data to calculate RUSLE factors.
Calculate RUSLE factors using python in google Collaboratory environment.
Deploy the results in a google earth app. |

**Objective of the maps:**

**Figure 1,2 and 3 (Non maps):**

Support the text and explain the RUSLE model.

**Figure 4:**

Show a thumbnail of the results of running RUSLE model, export data and deploy the google earth engine application showing the potential erosion before and post fire.

**Meta data**

| **Sources** | **Precipitation data:** Funk, Chris, Pete Peterson, Martin Landsfeld, Diego Pedreros, James Verdin, Shraddhanand Shukla, Gregory Husak, James Rowland, Laura Harrison, Andrew Hoell & Joel Michaelsen. "The climate hazards infrared precipitation with stations-a new environmental record for monitoring extremes". Scientific Data 2, 150066. [doi:10.1038/sdata.2015.66](https://doi.org/10.1038/sdata.2015.66) 2015.
**Soil data:** Tomislav Hengl, & Ichsani Wheeler. (2018). Soil organic carbon content in x 5 g / kg at 6 standard depths (0, 10, 30, 60, 100 and 200 cm) at 250 m resolution (Version v02) [Data set]. Zenodo. [10.5281/zenodo.1475457](https://doi.org/10.5281/zenodo.1475457)
**Elevation data:** Van Zyl, J. J. (2001). The Shuttle Radar Topography Mission (SRTM): a breakthrough in remote sensing of topography. Acta astronautica, 48(5-12), 559-565.
**Spectral data:** Landsat 8 Tier 2 in google earth engine catalog: **https://developers.google.com/earth-engine/datasets/catalog/LANDSAT\_LC08\_C02\_T1\_L2#image-properties**
**Landcover data:** MODIS Landcover 500m: [https://doi.org/10.5067/MODIS/MCD12Q1.061](https://doi.org/10.5067/MODIS/MCD12Q1.061%20)
 |
| --- | --- |
| **Map maker** | Lucas Rivero Iribarne |
| **Hosted in** | **Blog:** [**https://www.lucasriveroiribarne.com/portfolio\_content/interactive/**](https://www.lucasriveroiribarne.com/portfolio_content/interactive/) **Google earth engine app: https://lucasriveroiribarne.users.earthengine.app/view/ruslefires** |
| **Course name and code for which the geo visualization product was prepared.**
 | I wrote the blog post for the visualization portfolio using tools learnt through the MSc.

Geospatial data handling: Geoscripting (GRS33806)Data visualization and map story telling: GIS in context (GRS34306) |
| **Description of the application of the product**
 | **Two levels of application:** 1st as source of information for decision makers to improve the territorial planning and foresters to create plans on how to recover the ecosystems after the fire.
2nd People interested in the methodology can check the repository to replicate the analysis in a different study area to estimate the potential soil loss. |
| **Reflection on the alignment of people, purpose, process components. What works and what could you do differently. Provide motivation for choice of visualization type.**

 | In my opinion the blog entrance is useful to understand what soil erosion is and how affects ecosystems. Also, how fire affect forests and soil erosion. The tutorial on how to calculate RUSLE is useful for more advanced users.
For a next exercise the tutorial could be translate to English and explain it through the blog entrance. Also, the interactive figure could be embedded in the we page instead of a link to the google earth engine app.
 |
