# sandbox_telemetry_parse — 2026-11-17 01:21:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=192304 lines=431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 424 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 424} |
| `chromeGpuPssKb` | {'int': 424} |
| `chromeOtherPssKb` | {'int': 424} |
| `chromeProcesses` | {'int': 424} |
| `chromeProfiles` | {'int': 424} |
| `chromeRendererMaxPssKb` | {'int': 424} |
| `chromeRendererPssKb` | {'int': 424} |
| `chromeRenderers` | {'int': 424} |
| `chromeTabs` | {'int': 424} |
| `chromeTabsProbedProfiles` | {'int': 424} |
| `chromeUtilityPssKb` | {'int': 424} |
| `desktopPssKb` | {'int': 424} |
| `hostPssKb` | {'int': 424} |
| `kind` | {'str': 424} |
| `memAvailableKb` | {'int': 424} |
| `memTotalKb` | {'int': 424} |
| `otherPssKb` | {'int': 424} |
| `processes` | {'int': 424} |
| `pssFallbackProcesses` | {'int': 424} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
