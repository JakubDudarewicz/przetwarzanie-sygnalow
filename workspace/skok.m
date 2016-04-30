function skok(varargin) %(duration, begin 1, end 1, begin 2, end 2...

k = 2;
l=1;
figure;
r = ceil((nargin-1)/6);
dur = varargin{1};

for i = 0:((nargin-1)/2)
  be = varargin{k};
  en = varargin{k+1};
  

  a = zeros(dur,1);

  for j = be:en
    a(be, 1) = 1;
    be += 1;
  end
  
  subplot(r, 3, l);
  plot(a, '.');
  axis([0, dur, -0.5, 1.5]);
  printf("bound %d - %d\n", varargin{k}, varargin{k+1});
  if(k+1<(nargin-1))
  k=k+2;
  endif
  l=l+1;
end

endfunction

