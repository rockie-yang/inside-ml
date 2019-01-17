# inside machine learning


	docker build -t inside-ml .
	docker run -it --rm -p 8888:8888 -v `pwd`:/opt/notebooks inside-ml jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root
