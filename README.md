# Shiny mini BootCamp

##<span style="color:red">**Important Notes**</span>

- In order to download and install the necessary packages in your local environment, make sure to open the workshop by double clicking the `Shiny mini BootCamp.Rproj` file.
- Then:
	+ If you wish to download the necessary packages directly into your main R Library, check the `_install_R_lib` file.
	+ If you wish to download the necessary packages directly into renv package cache, check the `_renv_packages.R` or `_renv_restore.R` files. For your convenience, the workshop includes a `renv.lock` file, which will help you to restore the necessary packages using `_renv_restore.R` file.
- More information about these files will be given during the workshop.

Note that the workshop comes without renv initialization. Due to the nature of the workshop (having multiple apps and slides with dedicated folders), downloading necessary packages directly into your main R library will decrease package loading problems tremendously and decrease the code size. However, it will add all these new packages into you main R library and breaks reproducibility.

## Folder Structure for the Shiny mini BootCamp

- `Apps` folder consists of three separate folders named as `—Helper` and `Examples`.
	+ `—Helper` folder consists of cheat sheets, important notes, [`R`](https://www.r-project.org/) package manuals, and etc.
	+ `Examples` folder consists of soma shiny app examples.
- `Slides` folder consists of three folders named as `—Helper`, `Figs`, and `Files`, and realted Slide files/folder.
	+ `—Helper` folder consists of cheat sheats, important notes, [`R`](https://www.r-project.org/) package manuals, and etc.
	+ `Figs` folder consists of the pictures, plots, and graphics used in sildes.
	+ `Files` folder consists of the public raw data files, scripts and etc. used in sildes.
- `z_packages` folder is about installing necessary packages and it consists of two separate folders named as `_install_R_lib` and `_install_via_renv`.
	+ `_install_R_lib` folder contains R code for installing necessary packages directly into your main R libarary.
- `_install_via_renv` folder contains [`R`](https://www.r-project.org/) code for installing necessary packages into [renv package](https://rstudio.github.io/renv/index.html) cache.
	+ `_renv_info.R` file contains code for information about renv package.
	+ `_renv_packages.R` file contains code for installation of necessary packages into renv cache.
	+ `_renv_restore.R` file contains code for installation of necessary packages using the `renv.lock` file.

## Instructor
| [Omer Kara](<mailto:omer.kara.ylsy@gmail.com>) |
| :---: |
| Faculty Member, Ph.D. |
| Department of Economics |
| Eskisehir Osmangazi University |
| [Personal Website](https://omerkara.netlify.app/) |

## Notes
- Please feel free to use any of the content without the permission of the repository owner.
- All comments, suggestions, and other correspondences should be sent to [Omer Kara](<mailto:omer.kara.ylsy@gmail.com>).

## Copyright and Licencing 
The following is copyright and licensing information for redistribution of this work; it also includes a liability statement. If this work is not being redistributed to others, it may be omitted. It has no effect on the function of the above code.

### Copyright 
Copyright (c) 2024 by Omer Kara.

### License
Unless otherwise expressly stated, this work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to Creative Commons Corporation, P.O. Box 741107, Los Angeles, CA 90074-1107, USA.

### Liability Statement
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 