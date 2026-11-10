# sandbox_telemetry_parse — 2026-11-10 06:28:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1020397 lines=2263
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2254 |
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
| `chromeBrowserPssKb` | {'int': 2254} |
| `chromeGpuPssKb` | {'int': 2254} |
| `chromeOtherPssKb` | {'int': 2254} |
| `chromeProcesses` | {'int': 2254} |
| `chromeProfiles` | {'int': 2254} |
| `chromeRendererMaxPssKb` | {'int': 2254} |
| `chromeRendererPssKb` | {'int': 2254} |
| `chromeRenderers` | {'int': 2254} |
| `chromeTabs` | {'int': 2254} |
| `chromeTabsProbedProfiles` | {'int': 2254} |
| `chromeUtilityPssKb` | {'int': 2254} |
| `desktopPssKb` | {'int': 2254} |
| `hostPssKb` | {'int': 2254} |
| `kind` | {'str': 2254} |
| `memAvailableKb` | {'int': 2254} |
| `memTotalKb` | {'int': 2254} |
| `otherPssKb` | {'int': 2254} |
| `processes` | {'int': 2254} |
| `pssFallbackProcesses` | {'int': 2254} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
