# sandbox_telemetry_parse — 2026-11-20 11:35:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1696744 lines=3761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3750 |
| `egress_tunnel` | 7 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 3750} |
| `chromeGpuPssKb` | {'int': 3750} |
| `chromeOtherPssKb` | {'int': 3750} |
| `chromeProcesses` | {'int': 3750} |
| `chromeProfiles` | {'int': 3750} |
| `chromeRendererMaxPssKb` | {'int': 3750} |
| `chromeRendererPssKb` | {'int': 3750} |
| `chromeRenderers` | {'int': 3750} |
| `chromeTabs` | {'int': 3750} |
| `chromeTabsProbedProfiles` | {'int': 3750} |
| `chromeUtilityPssKb` | {'int': 3750} |
| `desktopPssKb` | {'int': 3750} |
| `hostPssKb` | {'int': 3750} |
| `kind` | {'str': 3750} |
| `memAvailableKb` | {'int': 3750} |
| `memTotalKb` | {'int': 3750} |
| `otherPssKb` | {'int': 3750} |
| `processes` | {'int': 3750} |
| `pssFallbackProcesses` | {'int': 3750} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
