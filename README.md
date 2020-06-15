# Ruby Linter Capstone Project


<br />
 
<br> 

## Table of Contents

* [About the Project](#About-The-Project)
* [Getting Started With The Game](#Installation-And-Usage-Instructions)
* [Built With](#Built-With)
* [Getting started](#Getting-Started)
* [Contributing](#contributing)
* [Author](#Author)


<!-- ABOUT THE PROJECT -->
## About The Project

This requires me to create Ruby linters to further make life easy for me and other programmers. I have created 2 Ruby linters to check

1. AMBIGUITY IN METHOD: This cop checks for ambiguous block association with method when param passed without parentheses. All methods with one or more arguments must have the arguments enclosed within a bracket. Any method whose arguments are not enclosed within a bracket is ambigous and that's what our linter is up to detect.

   *****Examples Of Ambigous Methods*****
   ```
   i) def my_method a
        puts 'Hello World'
      end
   ii) def my_method a, b, c
        puts 'Hello World'
      end
   ```

   *****Examples Of Normal Methods*****
   ```
   i) def my_method 
        puts 'Hello World'
      end
   ii) def my_method(a)
        puts 'Hello World'
      end
   iii) def my_method(a, b, c)
        puts 'Hello World'
      end
   ```
   ![screenshot](images/sample1a.jpg)

2. LAYOUT STYLE INDENTATION: Bare access modifiers (those not applying to specific methods) should be indented as deep as method definitions, or as deep as the class/module keyword, depending on configuration.

   ![screenshot](images/sample2a.jpg)

## Installation And Usage Instructions

In order to use this linter, you will need to have the repo downloaded on your local computer. To achieve that please open your Terminal and type:

```
$ cd <local file where the file will be cloned>
$ git clone  https://github.com/adewaleK/Ruby_Linter_Capstone.git
```

Once the folder is on your computer, please go to the root directory by typing the next command:

```
$ cd Ruby_Linter_Capstone
```

Here, you can create an alias/softlink for the file so that you can run it from the root directory. To do that, please type the next commands:

**_On windows/Mac_**

```
$ ln -s $PWD/main /usr/local/bin/

```

**_On Linux_**

```
$ sudo ln -s $PWD/main /usr/local/bin/
```

Then you can run the file from the root directory

```
$ cd Ruby_Linter_Capstone
$ main

Please provide the path to the file you would like to check for errors

$ <path to file>

```

If you would not like to create an alias/softlink then you can just go into the bin folder and then run the linter like this:

```
$ cd Ruby_Linter_Capstone
$ cd bin
$ ruby main

Please provide the path to the file you would like to check for errors

$ <path to file>

```

You can get the **_path to file_** by going to your file directory and copying the path, or on your code editor right click on the file and then **_Copy Path_**. Then follow the instructions provided by the linter.

> **_Please [click here](https://www.loom.com/share/e74fb588c8204a2c99ffc721366cb901) to view the video instructions._**

### Built With

* [RUBY](https://ruby-doc.org/)
* [VS-CODE]

<!-- GETTING STARTED -->
## Getting Started

Clone or fork the repo <https://github.com/adewaleK/Ruby_Linter_Capstone.git> to get a copy and explore the content of the project.


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b [Branch-name]`)
3. Commit your Changes (`git commit -m '[Commit-message]'`)
4. Push to the Branch (`git push origin [Branch-name]`)
5. Open a Pull Request

## Author

**Adewale kamilu A**  
* Github: [@githubhandle](https://github.com/adewaleK)
* Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
* Linkedin: [linkedin](https://linkedin.com/linkedinhandle)
* Email: [Email](devkamilnaija@gmail.com)
