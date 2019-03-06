@testset "Chernoff tests" begin
    d = Chernoff()

    cdftest=[
        0.005 0.5037916689930134;
        0.015 0.5113737159744436;
        0.025 0.5189518911337264;
        0.035 0.5265236172270374;
        0.045 0.5340863229612878;
        0.055 0.541637445363313;
        0.065 0.5491744321382676;
        0.075 0.556694744013348;
        0.085 0.5641958570651835;
        0.095 0.5716752650256268;
        0.105 0.5791304815656103;
        0.115 0.5865590425511593;
        0.125 0.5939585082711147;
        0.135 0.6013264656321359;
        0.145 0.6086605303182655;
        0.155 0.6159583489126876;
        0.165 0.6232176009794599;
        0.175 0.6304360010992436;
        0.185 0.6376113008624671;
        0.195 0.6447412908097765;
        0.205 0.6518238023240649;
        0.215 0.6588567094682105;
        0.225 0.6658379307650819;
        0.235 0.6727654309193446;
        0.245 0.6796372224828434;
        0.255 0.6864513674498119;
        0.265 0.6932059787930698;
        0.275 0.6998992219329853;
        0.285 0.7065293161345655;
        0.295 0.7130945358373242;
        0.305 0.7195932119132353;
        0.315 0.7260237328492151;
        0.325 0.7323845458573087;
        0.335 0.7386741579064688;
        0.345 0.7448911366812273;
        0.355 0.7510341114556635;
        0.365 0.7571017738953651;
        0.375 0.7630928787745712;
        0.385 0.7690062446148507;
        0.395 0.7748407542420853;
        0.405 0.7805953552614361;
        0.415 0.786269060454087;
        0.425 0.7918609480850309;
        0.435 0.7973701621351792;
        0.445 0.8027959124488315;
        0.455 0.8081374748004513;
        0.465 0.8133941908816786;
        0.475 0.8185654682017057;
        0.485 0.823650779913423;
        0.495 0.8286496645651691;
        0.505 0.8335617257530529;
        0.515 0.8383866317232886;
        0.525 0.8431241148805353;
        0.535 0.8477739712206347;
        0.545 0.8523360597092733;
        0.555 0.8568103015557271;
        0.565 0.8611966794490666;
        0.575 0.8654952367057263;
        0.585 0.8697060763547471;
        0.595 0.8738293601627617;
        0.605 0.8778653075886909;
        0.615 0.8818141946885997;
        0.625 0.88567635294178;
        0.635 0.8894521680505922;
        0.645 0.8931420786562767;
        0.655 0.8967465750281972;
        0.665 0.9002661976867428;
        0.675 0.9037015359952119;
        0.685 0.9070532266935508;
        0.695 0.9103219523993228;
        0.705 0.9135084400870754;
        0.715 0.9166134594908737;
        0.725 0.9196378215191889;
        0.735 0.9225823766240466;
        0.745 0.9254480131350427;
        0.755 0.928235655591972;
        0.765 0.9309462630294286;
        0.775 0.9335808272718444;
        0.785 0.9361403712094327;
        0.795 0.9386259470397855;
        0.805 0.9410386345416801;
        0.815 0.9433795393000659;
        0.825 0.9456497909787722;
        0.835 0.9478505415455782;
        0.845 0.9499829635303033;
        0.855 0.9520482483056357;
        0.865 0.9540476043275662;
        0.875 0.9559822554235589;
        0.885 0.9578534391151732;
        0.895 0.9596624048960603;
        0.905 0.9614104126081986;
        0.915 0.9630987307693821;
        0.925 0.9647286349803182;
        0.935 0.9663014063237074;
        0.945 0.9678183298266878;
        0.955 0.9692806929171217;
        0.965 0.9706897839442293;
        0.975 0.9720468907261572;
        0.985 0.9733532991278337;
        0.995 0.9746102916986603
    ]

    for i=1:size(cdftest,1)
        @test isapprox(cdf(d,cdftest[i, 1]), cdftest[i, 2]) 
    end
end
