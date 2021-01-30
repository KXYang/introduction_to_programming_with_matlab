%Function
function indices = saddle(M)

    indices = zeros(0,2);  
    [r, c] = size(M);

    for i_row = 1:r
        for j_row = 1 : c
            element = M(i_row, j_row);
            
            if greater_than(element, M(i_row, :)) && less_than(element, M(:, j_row))
                indices(end + 1, :) = [i_row, j_row];
            end
        end
    end

function output = greater_than(element, row) 
    output = sum(element >= row) == length(row);

function output = less_than(element, column)
    output = sum(element <= column) == length(column);
    
%Code to call your function
% create an interesting surface
[X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
Z = (X.^2-Y.^2)';
% find saddle points
indices = saddle(Z)
% plot surface
surf(Z);
hold on
% mark saddle points with red dots in the same figure
for ii = 1:size(indices,1)
    h = scatter3(indices(ii,2),indices(ii,1),Z(indices(ii,1),indices(ii,2)),'red','filled');
    h.SizeData = 120;
end
% adjust viewpoint
view(-115,14);
hold off
