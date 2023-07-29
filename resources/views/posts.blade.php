@extends('layouts.main')
@section('container')

<h1 class="mb-5">{{ $title }}</h1>

@if ($posts->count())
    <div class="card mb-3">
        @if ($posts[0]->image)
        <div style="max-height: 400px; overflow:hidden;">
            <img src="{{ asset('storage/'. $posts[0]->image) }}" class="img-fluid" alt="{{ $posts[0]->category->name }}">
        </div>
        @else
        <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
        @endif

        <div class="card-body text-center">
        <h3 class="card-title"><a href="/post/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->judul }}</a></h3>
        <p>
            <small class="text-muted">
                By. <a href="/authors/{{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> <a href="/categories/{{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
            </small>
        </p>
        <p class="card-text">{{ $posts[0]->excerpt }}</p>
        <a href="/post/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>

        </div>
    </div>
@else
<p class="text-center fs-4">No Post found</p>
@endif

<div class="container">
    <div class="row">
        @foreach ($posts->skip(1) as $post)
        <div class="col-md-4 mb-5">
            <div class="card">
                <div class="position-absolute bg-dark px-3 py-2"><a href="/categories/{{ $post->category->slug }}" class="text-white text-decoration-none">{{ $post->category->name }}</a></div>
                @if ($post->image)
                    <img src="{{ asset('storage/'. $post->image) }}" class="img-fluid mt-3" alt="{{ $post->category->name }}">
                @else
                <img src="https://source.unsplash.com/400x400?{{ $post->category->name }}" class="img-fluid" alt="{{ $post->category->name }}">
                @endif
                <div class="card-body">
                  <h5 class="card-title">{{ $post->judul }}</h5>
                  <p>
                    <small class="text-muted">
                        By. <a href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}
                    </small>
                </p>
                  <p class="card-text">{{ $post->excerpt}}</p>
                  <a href="/post/{{ $post->slug }}" class="btn btn-primary">Read More</a>
                </div>
              </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
