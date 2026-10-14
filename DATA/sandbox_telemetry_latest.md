# sandbox_telemetry_parse — 2026-10-14 14:40:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=339370 lines=755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 750 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 750} |
| `chromeGpuPssKb` | {'int': 750} |
| `chromeOtherPssKb` | {'int': 750} |
| `chromeProcesses` | {'int': 750} |
| `chromeProfiles` | {'int': 750} |
| `chromeRendererMaxPssKb` | {'int': 750} |
| `chromeRendererPssKb` | {'int': 750} |
| `chromeRenderers` | {'int': 750} |
| `chromeTabs` | {'int': 750} |
| `chromeTabsProbedProfiles` | {'int': 750} |
| `chromeUtilityPssKb` | {'int': 750} |
| `desktopPssKb` | {'int': 750} |
| `hostPssKb` | {'int': 750} |
| `kind` | {'str': 750} |
| `memAvailableKb` | {'int': 750} |
| `memTotalKb` | {'int': 750} |
| `otherPssKb` | {'int': 750} |
| `processes` | {'int': 750} |
| `pssFallbackProcesses` | {'int': 750} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
