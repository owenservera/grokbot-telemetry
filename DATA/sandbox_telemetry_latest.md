# sandbox_telemetry_parse — 2026-11-19 23:54:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1496473 lines=3318
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3307 |
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
| `chromeBrowserPssKb` | {'int': 3307} |
| `chromeGpuPssKb` | {'int': 3307} |
| `chromeOtherPssKb` | {'int': 3307} |
| `chromeProcesses` | {'int': 3307} |
| `chromeProfiles` | {'int': 3307} |
| `chromeRendererMaxPssKb` | {'int': 3307} |
| `chromeRendererPssKb` | {'int': 3307} |
| `chromeRenderers` | {'int': 3307} |
| `chromeTabs` | {'int': 3307} |
| `chromeTabsProbedProfiles` | {'int': 3307} |
| `chromeUtilityPssKb` | {'int': 3307} |
| `desktopPssKb` | {'int': 3307} |
| `hostPssKb` | {'int': 3307} |
| `kind` | {'str': 3307} |
| `memAvailableKb` | {'int': 3307} |
| `memTotalKb` | {'int': 3307} |
| `otherPssKb` | {'int': 3307} |
| `processes` | {'int': 3307} |
| `pssFallbackProcesses` | {'int': 3307} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
