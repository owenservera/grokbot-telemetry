# sandbox_telemetry_parse — 2026-11-11 08:44:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1549838 lines=3433
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3424 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3424} |
| `chromeGpuPssKb` | {'int': 3424} |
| `chromeOtherPssKb` | {'int': 3424} |
| `chromeProcesses` | {'int': 3424} |
| `chromeProfiles` | {'int': 3424} |
| `chromeRendererMaxPssKb` | {'int': 3424} |
| `chromeRendererPssKb` | {'int': 3424} |
| `chromeRenderers` | {'int': 3424} |
| `chromeTabs` | {'int': 3424} |
| `chromeTabsProbedProfiles` | {'int': 3424} |
| `chromeUtilityPssKb` | {'int': 3424} |
| `desktopPssKb` | {'int': 3424} |
| `hostPssKb` | {'int': 3424} |
| `kind` | {'str': 3424} |
| `memAvailableKb` | {'int': 3424} |
| `memTotalKb` | {'int': 3424} |
| `otherPssKb` | {'int': 3424} |
| `processes` | {'int': 3424} |
| `pssFallbackProcesses` | {'int': 3424} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
