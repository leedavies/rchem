context("SD File Reader")

test_that("read simple sd file", {
    filepath = "../tests/data/simplesdfile.sdf";
    data <- rchem::read_sdfile(filepath);
    expect_false(is.null(data))
})