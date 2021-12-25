FROM fedora:33

RUN yum update -y
RUN yum install -y texlive-collection-latexrecommended
RUN yum install -y texlive-collection-fontsrecommended
RUN yum install -y texlive-collection-pictures
RUN yum install -y texlive-collection-science
RUN yum install -y texlive-collection-langcyrillic
RUN sudo dnf install -y 'tex(fullpage.sty)'

COPY CV /CV

RUN sudo pdflatex -interaction=nonstopmode -output-directory=CV CV/resume.tex

CMD [ "bash" ]
