<h1 align="center">
  <!--
  <a href="https://github.com/mkg20001/resume" title="Résumé Maciej Krüger">
    <img alt="MaciejKrüger" src="https://github.com/mkg20001/resume/raw/master/mug.jpg" width="200px" height="200px" />
  </a>
  <br />
  -->
  Maciej Krüger
</h1>

<p align="center">
  Professional résumé
</p>

<!--
<div align="center">
  <a href="https://travis-ci.com/github/DavideFauri/resume">
    <img alt="TravisCI" src="https://travis-ci.com/DavideFauri/resume.svg?branch=master" />
  </a><br/>
  <a href="https://github.com/DavideFauri/resume/releases/download/Nov-2020-Security/CV_Davide_Fauri-eng.pdf">
    <img alt="Résumé - Security (English)" src="https://img.shields.io/badge/CV%20Security%20🇬🇧-pdf-green.svg" />
  </a>
  <a href="https://github.com/DavideFauri/resume/releases/download/Nov-2020-Security/CV_Davide_Fauri-ita.pdf">
    <img alt="Résumé - Security (Italiano)" src="https://img.shields.io/badge/CV%20Security%20🇮🇹-pdf-green.svg" />
  </a><br/>
  <a href="https://github.com/DavideFauri/resume/releases/download/Nov-2020-Data/CV_Davide_Fauri-eng.pdf">
    <img alt="Résumé - Data (English)" src="https://img.shields.io/badge/CV%20Data%20🇬🇧-pdf-green.svg" />
  </a>
  <a href="https://github.com/DavideFauri/resume/releases/download/Nov-2020-Data/CV_Davide_Fauri-ita.pdf">
    <img alt="Résumé - Data (Italiano)" src="https://img.shields.io/badge/CV%20Data%20🇮🇹-pdf-green.svg" />
  </a>
</div>
-->

<br />


## Download

My résumé is available for both cybersecurity ([ENG](https://github.com/DavideFauri/resume/releases/download/Nov-2020-Security/CV_Davide_Fauri-eng.pdf), [ITA](https://github.com/DavideFauri/resume/releases/download/Nov-2020-Security/CV_Davide_Fauri-ita.pdf)) and data/programming ([ENG](https://github.com/DavideFauri/resume/releases/download/Nov-2020-Data/CV_Davide_Fauri-eng.pdf), [ITA](https://github.com/DavideFauri/resume/releases/download/Nov-2020-Data/CV_Davide_Fauri-ita.pdf)) positions.

<!-- | Page. 1 | Page. 2 | -->
<!-- |:-------:|:-------:| -->
<!-- | [![Résumé](https://github.com/DavideFauri/resume/releases/download/latest/CV_Davide_Fauri_eng-0.png)](https://github.com/DavideFauri/resume/releases/download/latest/CV_Davide_Fauri_eng.pdf) | [![Résumé](https://github.com/DavideFauri/resume/releases/download/latest/CV_Davide_Fauri_eng-1.png)](https://github.com/DavideFauri/resume/releases/download/latest/CV_Davide_Fauri_eng.pdf) | -->

## How to compile your own

### Automatic publishing through Travis CI

I've set up a `.travis.yml` configuration file to automatically use `tectonic` and `biber` and compile both version of my résumé whenever a commit is made.

If the committed version is tagged, the PDF files are published and should be accessible by clicking on one of the links of this README.

### Local compilation

For *local* compilation, a full TeX distribution is assumed. There are many distributions available, [TeX Live](tug.org/texlive) is the usual recommendation.

Additionally a default.nix is provided for launching a nix-shell or building the CV. For building on nix use the commands in a `nix-shell` or directly build with `nix-build`.

The usage is simple: at a command prompt, just run

```bash
make {your-cv}.pdf
```

and it should produce the desired output.

In the Makefile, I invoke the `latexmk` command, which is obtainable via the TeX Live package manager (`sudo tlmgr install latexmk`).

Other, more modern approaches could work better: if I had to start from scratch now, I would probably use [Tectonic](https://tectonic-typesetting.github.io) for local compilation as well, but as of November 2020 it still lacks out-of-the-box `biber` support.

## Credit

[**Awesome-CV**](https://github.com/posquit0/Awesome-CV) is the main project that I forked and took as a template for my resume. Thanks @posquit0, you're great!

[**aminmkhan's fork** of Awesome-CV](https://github.com/aminmkhan/Awesome-CV) is a notable fork that provides support for BibTex publications.

[**tectonic-docker**](https://hub.docker.com/r/dxjoke/tectonic-docker) is a Docker container with cache-primed tectonic and biber. Thanks a lot, @dxjoke!
