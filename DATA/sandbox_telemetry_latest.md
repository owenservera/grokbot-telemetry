# sandbox_telemetry_parse — 2026-11-25 04:54:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2601859 lines=5765
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5750 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5750} |
| `chromeGpuPssKb` | {'int': 5750} |
| `chromeOtherPssKb` | {'int': 5750} |
| `chromeProcesses` | {'int': 5750} |
| `chromeProfiles` | {'int': 5750} |
| `chromeRendererMaxPssKb` | {'int': 5750} |
| `chromeRendererPssKb` | {'int': 5750} |
| `chromeRenderers` | {'int': 5750} |
| `chromeTabs` | {'int': 5750} |
| `chromeTabsProbedProfiles` | {'int': 5750} |
| `chromeUtilityPssKb` | {'int': 5750} |
| `desktopPssKb` | {'int': 5750} |
| `hostPssKb` | {'int': 5750} |
| `kind` | {'str': 5750} |
| `memAvailableKb` | {'int': 5750} |
| `memTotalKb` | {'int': 5750} |
| `otherPssKb` | {'int': 5750} |
| `processes` | {'int': 5750} |
| `pssFallbackProcesses` | {'int': 5750} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
