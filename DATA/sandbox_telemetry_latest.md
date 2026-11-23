# sandbox_telemetry_parse — 2026-11-23 21:54:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2002048 lines=4439
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4424 |
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
| `chromeBrowserPssKb` | {'int': 4424} |
| `chromeGpuPssKb` | {'int': 4424} |
| `chromeOtherPssKb` | {'int': 4424} |
| `chromeProcesses` | {'int': 4424} |
| `chromeProfiles` | {'int': 4424} |
| `chromeRendererMaxPssKb` | {'int': 4424} |
| `chromeRendererPssKb` | {'int': 4424} |
| `chromeRenderers` | {'int': 4424} |
| `chromeTabs` | {'int': 4424} |
| `chromeTabsProbedProfiles` | {'int': 4424} |
| `chromeUtilityPssKb` | {'int': 4424} |
| `desktopPssKb` | {'int': 4424} |
| `hostPssKb` | {'int': 4424} |
| `kind` | {'str': 4424} |
| `memAvailableKb` | {'int': 4424} |
| `memTotalKb` | {'int': 4424} |
| `otherPssKb` | {'int': 4424} |
| `processes` | {'int': 4424} |
| `pssFallbackProcesses` | {'int': 4424} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
