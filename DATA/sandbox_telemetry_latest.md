# sandbox_telemetry_parse — 2026-11-18 15:13:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=866004 lines=1921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1914 |
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
| `chromeBrowserPssKb` | {'int': 1914} |
| `chromeGpuPssKb` | {'int': 1914} |
| `chromeOtherPssKb` | {'int': 1914} |
| `chromeProcesses` | {'int': 1914} |
| `chromeProfiles` | {'int': 1914} |
| `chromeRendererMaxPssKb` | {'int': 1914} |
| `chromeRendererPssKb` | {'int': 1914} |
| `chromeRenderers` | {'int': 1914} |
| `chromeTabs` | {'int': 1914} |
| `chromeTabsProbedProfiles` | {'int': 1914} |
| `chromeUtilityPssKb` | {'int': 1914} |
| `desktopPssKb` | {'int': 1914} |
| `hostPssKb` | {'int': 1914} |
| `kind` | {'str': 1914} |
| `memAvailableKb` | {'int': 1914} |
| `memTotalKb` | {'int': 1914} |
| `otherPssKb` | {'int': 1914} |
| `processes` | {'int': 1914} |
| `pssFallbackProcesses` | {'int': 1914} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
