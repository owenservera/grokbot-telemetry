# sandbox_telemetry_parse — 2026-11-11 18:40:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1764792 lines=3908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3899 |
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
| `chromeBrowserPssKb` | {'int': 3899} |
| `chromeGpuPssKb` | {'int': 3899} |
| `chromeOtherPssKb` | {'int': 3899} |
| `chromeProcesses` | {'int': 3899} |
| `chromeProfiles` | {'int': 3899} |
| `chromeRendererMaxPssKb` | {'int': 3899} |
| `chromeRendererPssKb` | {'int': 3899} |
| `chromeRenderers` | {'int': 3899} |
| `chromeTabs` | {'int': 3899} |
| `chromeTabsProbedProfiles` | {'int': 3899} |
| `chromeUtilityPssKb` | {'int': 3899} |
| `desktopPssKb` | {'int': 3899} |
| `hostPssKb` | {'int': 3899} |
| `kind` | {'str': 3899} |
| `memAvailableKb` | {'int': 3899} |
| `memTotalKb` | {'int': 3899} |
| `otherPssKb` | {'int': 3899} |
| `processes` | {'int': 3899} |
| `pssFallbackProcesses` | {'int': 3899} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
